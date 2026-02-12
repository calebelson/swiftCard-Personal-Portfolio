import ElementaryUI
import JavaScriptKit

// Page navigation enum: available pages in the app
enum Page {
    case about
    case resume
    case portfolio
    case blog
    case contact
}

// Main content and navigation: renders one active page and preserves form state
// Acts as a host view for all main pages and manages navigation state
@View
struct MainView {
    // Active page
    @State var currentPage: Page = .about

    // Lifted contact form state so it persists when switching pages
    @State var contactName: String = ""
    @State var contactEmail: String = ""
    @State var contactMessage: String = ""
    
    var body: some View {
        div(.class("main-content")) {
            // Navigation bar with page links
            nav(.class("navbar")) {
                ul(.class("navbar-list")) {
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .about ? "navbar-link active" : "navbar-link")) { 
                            "About" 
                        }
                        .onClick { navigateTo(.about) }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .resume ? "navbar-link active" : "navbar-link")) { 
                            "Resume" 
                        }
                        .onClick { navigateTo(.resume) }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .portfolio ? "navbar-link active" : "navbar-link")) { 
                            "Portfolio" 
                        }
                        .onClick { navigateTo(.portfolio) }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .blog ? "navbar-link active" : "navbar-link")) { 
                            "Blog" 
                        }
                        .onClick { navigateTo(.blog) }
                    }
                    li(.class("navbar-item")) { 
                        button(.class(currentPage == .contact ? "navbar-link active" : "navbar-link")) { 
                            "Contact" 
                        }
                        .onClick { navigateTo(.contact) }
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
    
    // Navigation helper - updates current page and scrolls to top
    private func navigateTo(_ page: Page) {
        currentPage = page
        _ = JSObject.global.window.scrollTo(0, 0)
    }
}

