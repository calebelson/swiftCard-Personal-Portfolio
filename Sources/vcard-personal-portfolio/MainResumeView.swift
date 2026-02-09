import ElementaryUI

@View
struct MainResumeView {
    var body: some View {
        article(.class("resume"), HTMLAttribute(name: "data-page", value: "resume")) {
            header {
                h2(.class("h2 article-title")) { "Resume" }
            }

            section(.class("timeline")) {
                div(.class("title-wrapper")) {
                    div(.class("icon-box")) {
                        img(
                            .src("/assets/icons/book-outline.svg"), .alt("Book"),
                            .style(["width": "20px", "height": "20px"]))
                    }

                    h3(.class("h3 timeline-title")) { "Education" }
                }

                ol(.class("timeline-list")) {
                    li(.class("timeline-item")) {
                        div(.class("timeline-info")) {
                            span(.class("timeline-year")) { "2007 - 2011" }
                        }

                        div(.class("timeline-marker")) {}

                        div(.class("timeline-content")) {
                            h4(.class("h4 timeline-content-title")) {
                                "Bachelor of Science in Computer Science"
                            }
                            p { "University of California, Los Angeles" }
                        }
                    }

                    li(.class("timeline-item")) {
                        div(.class("timeline-info")) {
                            span(.class("timeline-year")) { "2011 - 2013" }
                        }

                        div(.class("timeline-marker")) {}

                        div(.class("timeline-content")) {
                            h4(.class("h4 timeline-content-title")) {
                                "Master of Science in Software Engineering"
                            }
                            p { "Stanford University" }
                        }
                    }
                }
            }
        }
    }
}
