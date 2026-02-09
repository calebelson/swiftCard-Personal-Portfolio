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
                    img(.src("/assets/images/my-avatar.png"), .alt("Richard hanrick"), .style(["width": "80px"]))
                }
                div(.class("info-content")) {
                    h1(.class("name"), .title("Richard hanrick")) { "Richard hanrick" }
                    p(.class("title")) { "Web Developer" }
                }

                // Toggle button with chevron icon that rotates based on state
                // Hidden on wide screens via CSS
                button(.class("info_more-btn")) {
                    img(.src(isExpanded ? "/assets/icons/chevron-up.svg" : "/assets/icons/chevron-down.svg"),
                    .alt(""), .style(["width": "20px", "height": "20px"]))
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
// Rendered conditionally when sidebar is expanded
@View
private struct ExpandedSidebarContent {
    var body: some View {
        div(.class("sidebar-info_more")) {
            div(.class("separator")) {}
            ul(.class("contacts-list")) {
                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        img(.src("/assets/icons/mail-outline.svg"), .alt("Email"), .style(["width": "20px", "height": "20px"]))
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Email" }
                        a(.href("mailto:richard@example.com"), .class("contact-link")) { "richard@example.com" }
                    }
                }

                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        img(.src("/assets/icons/phone-portrait-outline.svg"), .alt("Phone"), .style(["width": "20px", "height": "20px"]))
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Phone" }
                        a(.href("tel:+12133522795"), .class("contact-link")) { "+1 (213) 352-2795" }
                    }
                }

                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        img(.src("/assets/icons/calendar-outline.svg"), .alt("Calendar"), .style(["width": "20px", "height": "20px"]))
                    }
                    div(.class("contact-info")) {
                        p(.class("contact-title")) { "Birthday" }
                        time(HTMLAttribute(name: "datetime", value: "1982-06-23")) { "June 23, 1982" }
                    }
                }

                li(.class("contact-item")) {
                    div(.class("icon-box")) {
                        img(.src("/assets/icons/location-outline.svg"), .alt("Location"), .style(["width": "20px", "height": "20px"]))
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
                        img(.src("/assets/icons/logo-facebook.svg"), .alt("Facebook"), .style(["width": "20px", "height": "20px"]))
                    }
                }
                li(.class("social-item")) {
                    a(.href("#"), .class("social-link")) {
                        img(.src("/assets/icons/logo-twitter.svg"), .alt("Twitter"), .style(["width": "20px", "height": "20px"]))
                    }
                }
                li(.class("social-item")) {
                    a(.href("#"), .class("social-link")) {
                        img(.src("/assets/icons/logo-instagram.svg"), .alt("Instagram"), .style(["width": "20px", "height": "20px"]))
                    }
                }
            }
        }
    }
}
