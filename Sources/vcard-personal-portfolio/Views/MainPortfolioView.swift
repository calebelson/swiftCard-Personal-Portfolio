import ElementaryUI

// Portfolio page with filterable project grid
@View
struct MainPortfolioView {
    @State var selectedCategory = "All"
    @State var isSelectOpen = false
    
    var filteredProjects: [Project] {
        selectedCategory == "All" 
            ? PortfolioData.projects 
            : PortfolioData.projects.filter { $0.category == selectedCategory }
    }
    
    var body: some View {
        article(.class("portfolio"), HTMLAttribute(name: "data-page", value: "portfolio")) {
            header {
                h2(.class("h2 article-title")) { "Portfolio" }
            }

            section(.class("projects")) {
                // Desktop filter buttons
                ul(.class("filter-list")) {
                    for category in PortfolioData.categories {
                        FilterButton(category: category, selectedCategory: $selectedCategory)
                    }
                }

                // Mobile dropdown filter
                FilterSelectBox(
                    selectedCategory: selectedCategory,
                    isOpen: $isSelectOpen,
                    onSelect: { category in
                        selectedCategory = category
                        isSelectOpen = false
                    }
                )
                
                ul(.class("project-list")) {
                    for project in filteredProjects {
                        ProjectItem(project: project)
                    }
                }
            }
        }
    }
}

// Desktop filter component
@View
private struct FilterButton {
    let category: String
    @Binding var selectedCategory: String
    
    var body: some View {
        li(.class("filter-item")) {
            button(
                .class(category == selectedCategory ? "active" : ""),
                HTMLAttribute(name: "data-filter-btn", value: "")
            ) { category }
                .onClick { _ in selectedCategory = category }
        }
    }
}

// Mobile filter component
@View
private struct FilterSelectBox {
    let selectedCategory: String
    @Binding var isOpen: Bool
    let onSelect: (String) -> Void
    
    var body: some View {
        div(.class("filter-select-box")) {
            button(
                isOpen ? .class("filter-select active") : .class("filter-select"),
                HTMLAttribute(name: "data-select", value: "")
            ) {
                div(.class("select-value"), HTMLAttribute(name: "data-select-value", value: "")) {
                    selectedCategory
                }
                div(.class("select-icon")) {
                    ionIcon(.custom(name: "name", value: "chevron-down")) {}
                }
            }
                .onClick { _ in isOpen.toggle() }

            ul(.class(isOpen ? "select-list active" : "select-list")) {
                for category in PortfolioData.categories {
                    SelectItem(category: category, onSelect: onSelect)
                }
            }            
        }
    }
}

// Extracted to avoid result builder type inference issues with .onClick inside for loops
@View
private struct SelectItem {
    let category: String
    let onSelect: (String) -> Void
    
    var body: some View {
        li(.class("select-item")) {
            button(HTMLAttribute(name: "data-select-item", value: "")) { category }
                .onClick { _ in onSelect(category) }
        }
    }
}

// Project card displaying image, title, and category, with overlay on hover
@View
private struct ProjectItem {
    let project: Project
    
    var body: some View {
        li(
            .class("project-item active"),
            HTMLAttribute(name: "data-filter-item", value: ""),
            HTMLAttribute(name: "data-category", value: project.category.lowercased())
        ) {
            a(.href(project.link)) {
                figure(.class("project-img")) {
                    div(.class("project-item-icon-box")) {
                        ionIcon(.custom(name: "name", value: "eye-outline")) {}
                    }
                    img(.src(project.imageURL), .alt(project.title), HTMLAttribute(name: "loading", value: "lazy"))
                }
                
                h3(.class("project-title")) { project.title }
                p(.class("project-category")) { project.category }
            }
        }
    }
}

