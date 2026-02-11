import Foundation

struct BlogPost {
    let title: String
    let category: String
    let date: String
    let datetime: String
    let text: String
    let imageURL: String
    let link: String
}

struct BlogData {
    static let posts = [
        BlogPost(
            title: "Design conferences in 2022",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            text: "Veritatis et quasi architecto beatae vitae dicta sunt, explicabo.",
            imageURL: "/assets/images/blog-1.jpg",
            link: "#"
        ),
        BlogPost(
            title: "Best fonts every designer",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            text: "Sed ut perspiciatis, nam libero tempore, cum soluta nobis est eligendi.",
            imageURL: "/assets/images/blog-2.jpg",
            link: "#"
        ),
        BlogPost(
            title: "Design digest #80",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            text: "Excepteur sint occaecat cupidatat no proident, quis nostrum exercitationem ullam corporis suscipit.",
            imageURL: "/assets/images/blog-3.jpg",
            link: "#"
        ),
        BlogPost(
            title: "UI interactions of the week",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            text: "Enim ad minim veniam, consectetur adipiscing elit, quis nostrud exercitation ullamco laboris nisi.",
            imageURL: "/assets/images/blog-4.jpg",
            link: "#"
        ),
        BlogPost(
            title: "The forgotten art of spacing",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            text: "Maxime placeat, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            imageURL: "/assets/images/blog-5.jpg",
            link: "#"
        ),
        BlogPost(
            title: "Design digest #79",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            text: "Optio cumque nihil impedit uo minus quod maxime placeat, velit esse cillum.",
            imageURL: "/assets/images/blog-6.jpg",
            link: "#"
        )
    ]
}
