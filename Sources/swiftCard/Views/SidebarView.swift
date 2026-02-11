import ElementaryUI

// Collapsible sidebar with avatar, title, and expandable contact information
@View
struct SidebarView {
    // Controls sidebar expansion state on mobile
    @State var isExpanded: Bool = false

    var body: some View {
        aside(.class(isExpanded ? "sidebar active" : "sidebar")) {
            div(.class("sidebar-info")) {
                figure(.class("avatar-box")) {
                    img(.src("./assets/images/my-avatar.png"), .alt("Richard hanrick"))
                }
                div(.class("info-content")) {
                    h1(.class("name"), .title("Richard hanrick")) { "Richard hanrick" }
                    p(.class("title")) { "Web developer" }
                }

                // Toggle button with chevron icon that rotates based on state
                // Hidden on wide screens via CSS
                button(.class("info_more-btn")) {
                    span { isExpanded ? "Hide Contacts" : "Show Contacts" }
                    ionIcon(.custom(name: "name", value: isExpanded ? "chevron-up" : "chevron-down")) {}
                }
                .onClick { isExpanded.toggle() }
            }
            // Always render content - CSS controls visibility based on screen size
            // On mobile: controlled by isExpanded state
            // On desktop (1250px+): always visible via CSS
            ExpandedSidebarContent()
        }
    }
}

// Expanded sidebar content showing contact information
// Displayed conditionally when sidebar is expanded
@View
private struct ExpandedSidebarContent {
    var body: some View {
        div(.class("sidebar-info_more")) {
            div(.class("separator")) {}
            ul(.class("contacts-list")) {
                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        ionIcon(.custom(name: "name", value: "mail-outline")) {}
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Email" }
                        a(.href("mailto:richard@example.com"), .class("contact-link")) { "richard@example.com" }
                    }
                }

                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        ionIcon(.custom(name: "name", value: "phone-portrait-outline")) {}
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Phone" }
                        a(.href("tel:+12133522795"), .class("contact-link")) { "+1 (213) 352-2795" }
                    }
                }

                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        ionIcon(.custom(name: "name", value: "calendar-outline")) {}
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Birthday" }
                        time(HTMLAttribute(name: "datetime", value: "1982-06-23")) { "June 23, 1982" }
                    }
                }

                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        ionIcon(.custom(name: "name", value: "location-outline")) {}
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Location" }
                        address { "Sacramento, California, USA" }
                    }
                }
            }
            div(.class("separator")) {}
            ul(.class("social-list")) {
                li(.class("social-item")) {
                    a(.href("#"), .class("social-link")) {
                        ionIcon(.custom(name: "name", value: "logo-facebook")) {}
                    }
                }
                li(.class("social-item")) {
                    a(.href("#"), .class("social-link")) {
                        ionIcon(.custom(name: "name", value: "logo-twitter")) {}
                    }
                }
                li(.class("social-item")) {
                    a(.href("#"), .class("social-link")) {
                        ionIcon(.custom(name: "name", value: "logo-instagram")) {}
                    }
                }
                li(.class("social-item")) {
                    a(.href("#"), .class("social-link")) {
                        ionIcon(.custom(name: "name", value: "logo-linkedin")) {}
                    }
                }
            }
        }
    }
}
