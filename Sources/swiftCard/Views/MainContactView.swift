import ElementaryUI

// Contact page with map and contact form
// Accepts form state as bindings from parent to preserve data when switching pages
@View
struct MainContactView {
    // Form bindings - state lives in MainView and persists across navigation
    @Binding var name: String
    @Binding var email: String
    @Binding var message: String
    
    // Computed property to check if form is valid
    var invalidForm: Bool {
        name.isEmpty || email.isEmpty || message.isEmpty || !validEmail(email)
    }
    
    var body: some View {
        article(.class("contact"), HTMLAttribute(name: "data-page", value: "contact")) {
            header {
                h2(.class("h2 article-title")) { "Contact" }
            }

            // Embedded Google Maps iframe showing location
            section(.class("mapbox"), HTMLAttribute(name: "data-mapbox", value: "true")) {
                iframe(
                    .src("https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d199666.5651251294!2d-121.58334177520186!3d38.56165006739519!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x809ac672b28397f9%3A0x921f6aaa74197fdb!2sSacramento%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1647608789441!5m2!1sen!2sbd"),
                    .width(400), .height(300), HTMLAttribute(name: "loading", value: "lazy")
                ) {}
            }

            // Contact form with two-way binding to preserve state
            section(.class("contact-form")) {
                h3 (.class("h3 form-title")) { "Contact Form" }
                form(.action("#"), .class("form"), HTMLAttribute(name: "data-form", value: "true")) {
                    div(.class("input-wrapper")) {
                        // Input fields with value binding and onInput handlers
                        input(.type(.text), .name("fullname"), .class("form-input"), .placeholder("Full Name"), .value(name), HTMLAttribute(name: "required", value: "true"))
                            .onInput { name = $0.targetValue ?? "" }
                        input(.type(.email), .name("email"), .class("form-input"), .placeholder("Email Address"), .value(email), HTMLAttribute(name: "required", value: "true"))
                            .onInput { email = $0.targetValue ?? "" }
                    }

                    // Textarea content is set via inner text, not .value() attribute
                    textarea(.name("message"), .class("form-input"), .placeholder("Your Message"), HTMLAttribute(name: "required", value: "true")) {
                        message
                    }
                        .onInput { message = $0.targetValue ?? "" }
                    
                    // Button enabled only when all required fields are filled
                    button(
                        .type(.submit), 
                        .class("form-btn"), 
                        invalidForm ? .disabled : HTMLAttribute(name: "", value: "")
                    ) {
                        ionIcon(.custom(name: "name", value: "paper-plane")) {}
                        span{ "Send Message" }
                    }
                    .onClick {
                        if !invalidForm {
                            sendMessage(name: name, email: email, message: message)
                        }
                    }
                }
            }
        }
    }
}

// Basic email validation - must have exactly one @ with text before and after, and a . with text after it
private func validEmail(_ email: String) -> Bool {
    let parts = email.split(separator: "@")
    guard parts.count == 2 else { return false }
    guard !parts[0].isEmpty && !parts[1].isEmpty else { return false }
    
    let domain = String(parts[1])
    let domainParts = domain.split(separator: ".")
    guard domainParts.count >= 2 else { return false }
    guard !domainParts.last!.isEmpty else { return false }
    
    return true
}

private func sendMessage(name: String, email: String, message: String) {
    // Implement message sending logic here
}