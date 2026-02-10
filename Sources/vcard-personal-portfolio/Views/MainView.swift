import ElementaryUI

// Page navigation enum - defines all available pages in the application
enum Page {
    case about
    case resume
    case portfolio
    case blog
    case contact
}

// Main content area with navigation and page views
// Uses switch-based rendering: only the active page exists in DOM at any time
@View
struct MainView {
    // Current active page - controls which view is rendered
    @State var currentPage: Page = .about
    
    // Contact form state - lifted to this level to persist across page switches
    // Form data is preserved when navigating away from contact page
    @State var contactName: String = ""
    @State var contactEmail: String = ""
    @State var contactMessage: String = ""
    
    var body: some View {
        div(.class("main-content")) {
            // Navigation bar with page links
            nav(.class("navbar")) {
                ul(.class("navbar-list")) {
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .about ? "navbar-link active" : "navbar-link"), HTMLAttribute(name: "data-nav-link", value: "about")) { 
                            "About" 
                        }
                        .onClick { currentPage = .about }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .resume ? "navbar-link active" : "navbar-link"), HTMLAttribute(name: "data-nav-link", value: "resume")) { 
                            "Resume" 
                        }
                        .onClick { currentPage = .resume }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .portfolio ? "navbar-link active" : "navbar-link"), HTMLAttribute(name: "data-nav-link", value: "portfolio")) { 
                            "Portfolio" 
                        }
                        .onClick { currentPage = .portfolio }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .blog ? "navbar-link active" : "navbar-link"), HTMLAttribute(name: "data-nav-link", value: "blog")) { 
                            "Blog" 
                        }
                        .onClick { currentPage = .blog }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .contact ? "navbar-link active" : "navbar-link"), HTMLAttribute(name: "data-nav-link", value: "contact")) { 
                            "Contact" 
                        }
                        .onClick { currentPage = .contact }
                    }
                }
            }
            
            // Switch-based page rendering - only active page is in DOM
            // This provides better performance but requires state lifting for forms
            switch currentPage {
            case .about:
                MainAboutView()
            case .resume:
                MainResumeView()
            case .portfolio:
                MainPortfolioView()
            case .blog:
                MainBlogView()
            case .contact:
                // Pass form state as bindings to preserve data across page switches
                MainContactView(name: $contactName, email: $contactEmail, message: $contactMessage)
            }
        }
    }
}
