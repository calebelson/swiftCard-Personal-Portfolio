import ElementaryUI

@View
struct MainResumeView {
    var body: some View {
        article(.class("resume"), HTMLAttribute(name: "data-page", value: "resume")) {
            header {
                h2(.class("h2 article-title")) { "Resume" }
            }

            for section in ResumeData.sections {
                TimelineSectionView(data: section)
            }

            section(.class("skill")) {
                h3(.class("h3 skills-title")) { "My skills" }

                ul(.class("skills-list content-card")) {
                    for skill in SkillsData.skills {
                        SkillItemView(skill: skill)
                    }
                }
            }
        }
    }
}

@View
private struct TimelineSectionView {
    let data: TimelineSection

    var body: some View {
        section(.class("timeline")) {
            div(.class("title-wrapper")) {
                div(.class("icon-box")) {
                    img(
                        .src(data.icon), .alt(data.title),
                        .style(["width": "20px", "height": "20px"]))
                }
                h3(.class("h3 timeline-title")) { data.title }
            }

            ol(.class("timeline-list")) {
                for item in data.items {
                    li(.class("timeline-item")) {
                        if let title = item.title {
                            h4(.class("h4 timeline-item-title")) { title }
                        }
                        if let organization = item.organization {
                            h5(.class("h5 timeline-item-organization")) { organization }
                        }
                        if let dateBegin = item.dateBegin, let dateEnd = item.dateEnd {
                            span { "\(dateBegin) — \(dateEnd)" }
                        }
                        if let text = item.text {
                            p(.class("timeline-text")) { text }
                        }
                    }
                }
            }
        }
    }
}

@View
private struct SkillItemView {
    let skill: Skill

    var body: some View {
        li(.class("skills-item")) {
            div(.class("title-wrapper")) {
                h5(.class("h5")) { skill.name }
                data(HTMLAttribute(name: "value", value: String(skill.level))) {
                    "\(skill.level)%"
                }
            }
            div(.class("skill-progress-bg")) {
                div(.class("skill-progress-fill"), .style(["width": "\(skill.level)%"])) {}
            }
        }
    }
}
