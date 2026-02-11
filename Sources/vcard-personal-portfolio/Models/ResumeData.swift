import Foundation

struct TimelineItem {
    let title: String?
    let organization: String?
    let dateBegin: String?
    let dateEnd: String?
    let text: String?
    
    init(title: String? = nil, organization: String? = nil, dateBegin: String? = nil, dateEnd: String? = nil, text: String? = nil) {
        self.title = title
        self.organization = organization
        self.dateBegin = dateBegin
        self.dateEnd = dateEnd
        self.text = text
    }
}

struct TimelineSection {
    let title: String
    let icon: String
    let items: [TimelineItem]
}

struct ResumeData {
    static let education = TimelineSection(
        title: "Education",
        icon: "book-outline",
        items: [
            TimelineItem(
                organization: "University school of the arts",
                dateBegin: "2007",
                dateEnd: "2008",
                text: """
                Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos dolores et
                quas molestias exceptur.
                """
            ),
            TimelineItem(
                organization: "New york academy of art",
                dateBegin: "2006",
                dateEnd: "2007",
                text: """
                Ratione voluptatem sequi nesciunt, facere quisquams facere menda ossimus, omnis voluptas assumenda est
                omnis..
                """
            ),
            TimelineItem(
                organization: "High school of art and design",
                dateBegin: "2002",
                dateEnd: "2004",
                text: """
                Duis aute irure dolor in reprehenderit in voluptate, quila voluptas mag odit aut fugit, sed consequuntur
                magni dolores eos.
                """
            )
        ]
    )
    
    static let experience = TimelineSection(
        title: "Experience",
        icon: "briefcase-outline",
        items: [
            TimelineItem(
                title: "Creative Director",
                dateBegin: "2015",
                dateEnd: "Present",
                text: """
                Nemo enim ipsam voluptatem blanditiis praesentium voluptum delenit atque corrupti, quos dolores et qvuas
                molestias exceptur.
                """
            ),
            TimelineItem(
                title: "Art Director",
                dateBegin: "2013",
                dateEnd: "2015",
                text: """
                Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos dolores et
                quas molestias exceptur.
                """
            ),
            TimelineItem(
                title: "Web designer",
                dateBegin: "2010",
                dateEnd: "2013",
                text: """
                Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos dolores et
                quas molestias exceptur.
                """
            ),
        ]
    )
    
    static let sections = [education, experience]
}
