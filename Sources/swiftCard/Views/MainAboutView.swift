import ElementaryUI

@View
struct MainAboutView {
    @State var isModalActive = false
    @State var selectedTestimonial: Testimonial? = nil
    
    var body: some View {
        article(.class("about"), HTMLAttribute(name: "data-page", value: "about")) {
            header() {
                h2(.class("h2 article-title")) { "About Me" }
            }

            section(.class("about-text")) {
                p { """
                        I'm Creative Director and UI/UX Designer from Sydney, Australia, working in web development and print media.
                        I enjoy turning complex problems into simple, beautiful and intuitive designs.
                        """ }

                p { """
                        My job is to build your website so that it is functional and user-friendly but at the same time attractive.
                        Moreover, I add personal touch to your product and make sure that is eye-catching and easy to use. My aim is to bring
                        across your message and identity in the most creative way. I created web design for many famous brand companies.
                        """}
            }

            section(.class("service")) {
                h3(.class("h3 service-title")) { "What i'm doing"}

                ul(.class("service-list")) {
                    for service in ServicesData.services {
                        ServicesItemView(service: service)
                    }
                }
            }


            section(.class("testimonials")) {
                h3(.class("h3 testimonials-title")) { "Testimonials" }

                ul(.class("testimonials-list has-scrollbar")) {
                    for testimonial in TestimonialsData.testimonials {
                        TestimonialItemView(testimonial: testimonial, onTap: {
                            selectedTestimonial = testimonial
                            isModalActive = true
                        })
                    }
                }
            }

            section(.class("clients")) {
                h3(.class("h3 clients-title")) { "Clients" }
                ul(.class("clients-list has-scrollbar")) {
                    for client in ClientsData.clients {
                        ClientsItemView(client: client)
                    }
                }

            }


            // Modal
            if let testimonial = selectedTestimonial {
                TestimonialModalView(
                    testimonial: testimonial,
                    isActive: isModalActive,
                    onClose: { 
                        isModalActive = false
                        selectedTestimonial = nil
                    }
                )
            }
        }
    }
}

@View
private struct TestimonialItemView {
    let testimonial: Testimonial
    let onTap: () -> Void

    var body: some View {
        li(.class("testimonials-item")) {
            div(.class("content-card"), HTMLAttribute(name: "data-testimonials-item", value: "")) {
                figure(.class("testimonials-avatar-box")) {
                    img(.src(testimonial.imageURL), .alt(testimonial.name), HTMLAttribute(name: "data-testimonials-avatar", value: ""))
                }
                h4(.class("h4 testimonials-item-title"), HTMLAttribute(name: "data-testimonials-title", value: "")) { testimonial.name }
                div(.class("testimonials-text"), HTMLAttribute(name: "data-testimonials-text", value: "")) {
                    p { testimonial.text }
                }
            }
            .onClick { onTap() }
        }
    }
}

@View
private struct TestimonialModalView {
    let testimonial: Testimonial
    let isActive: Bool
    let onClose: () -> Void

    var body: some View {
         div(.class(isActive ? "overlay active" : "overlay"), HTMLAttribute(name: "data-overlay", value: "")) {}
             .onClick { onClose() }
         
         div(.class(isActive ? "modal-container active" : "modal-container"), HTMLAttribute(name: "data-modal-container", value: "")) {
             section(.class("testimonials-modal")) {
                button(.class("modal-close-btn"), HTMLAttribute(name: "data-modal-close-btn", value: "")) {
                    ionIcon(.custom(name: "name", value: "close-outline")) {}
                }
                .onClick { onClose() }

                div(.class("modal-img-wrapper")) {
                    figure(.class("modal-avatar-box")) {
                        img(.src(testimonial.imageURL), .alt(testimonial.name), HTMLAttribute(name: "data-modal-img", value: ""))
                    }
                    img(.src("./assets/images/icon-quote.svg"), .alt("quote icon"))
                }

                div(.class("modal-content")) {
                    h4(.class("h3 modal-title"), HTMLAttribute(name: "data-modal-title", value: "")) { testimonial.name }
                    div(HTMLAttribute(name: "data-modal-text", value: "")) {
                        p { testimonial.text }
                    }
                }
             }
         }
         .onClick { onClose() }
     }
}

@View
private struct ClientsItemView {
    let client: Client

    var body: some View {
        li(.class("clients-item")) {
            a(.href(client.link)) {
                img(.src(client.imageURL), .alt(client.name))
            }
        }
    }
}

@View
private struct ServicesItemView {
    let service: Service

    var body: some View {
        li(.class("service-item")) {
            div(.class("service-icon-box")) {
                img(.src(service.imageURL), .alt(service.altText), .width(40))
            }
            div(.class("service-content-box")) {
                h4(.class("h4 service-item-title")) { service.title }
                p(.class("service-item-text")) { service.text }
            }
        }
    }
}