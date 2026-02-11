import Foundation

struct BlogPost {
    let title: String
    let category: String
    let date: String
    let datetime: String
    let excerpt: String
    let imageUrl: String
    let link: String
}

struct BlogData {
    static let posts = [
        BlogPost(
            title: "Best fonts every designer",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            excerpt: "Sed ut perspiciatis, nam libero tempore, cum soluta nobis est eligendi.",
            imageUrl: "/assets/images/blog-2.jpg",
            link: "#"
        ),
        BlogPost(
            title: "Design digest #80",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            excerpt: "Excepteur sint occaecat cupidatat no proident, quis nostrum exercitationem ullam corporis suscipit.",
            imageUrl: "/assets/images/blog-3.jpg",
            link: "#"
        ),
        BlogPost(
            title: "UI interactions of the week",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            excerpt: "Enim ad minim veniam, consectetur adipiscing elit, quis nostrud exercitation ullamco laboris nisi.",
            imageUrl: "/assets/images/blog-4.jpg",
            link: "#"
        ),
        BlogPost(
            title: "The forgotten art of spacing",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            excerpt: "Maxime placeat, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            imageUrl: "/assets/images/blog-5.jpg",
            link: "#"
        ),
        BlogPost(
            title: "Design digest #79",
            category: "Design",
            date: "Fab 23, 2022",
            datetime: "2022-02-23",
            excerpt: "Optio cumque nihil impedit uo minus quod maxime placeat, velit esse cillum.",
            imageUrl: "/assets/images/blog-6.jpg",
            link: "#"
        )
    ]
}
