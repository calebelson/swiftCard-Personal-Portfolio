import Foundation

struct Project {
    let title: String
    let category: String
    let imageURL: String
    let link: String
}

struct PortfolioData {
    static let categories = ["All", "Web design", "Applications", "Web development"]
    
    static let projects = [
        Project(title: "Finance", category: "Web development", imageURL: "./assets/images/project-1.jpg", link: "#"),
        Project(title: "Orizon", category: "Web development", imageURL: "./assets/images/project-2.png", link: "#"),
        Project(title: "Fundo", category: "Web design", imageURL: "./assets/images/project-3.jpg", link: "#"),
        Project(title: "Brawlhalla", category: "Applications", imageURL: "./assets/images/project-4.png", link: "#"),
        Project(title: "DSM.", category: "Web design", imageURL: "./assets/images/project-5.png", link: "#"),
        Project(title: "MetaSpark", category: "Web design", imageURL: "./assets/images/project-6.png", link: "#"),
        Project(title: "Summary", category: "Web development", imageURL: "./assets/images/project-7.png", link: "#"),
        Project(title: "Task Manager", category: "Applications", imageURL: "./assets/images/project-8.jpg", link: "#"),
        Project(title: "Arrival", category: "Web development", imageURL: "./assets/images/project-9.png", link: "#")
    ]
}
