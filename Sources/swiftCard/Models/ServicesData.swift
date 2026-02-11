import Foundation

struct Service {
    let imageURL: String
    let altText: String
    let title: String
    let text: String
}

struct ServicesData {
    static let services: [Service] = [
        Service(
            imageURL: "./assets/images/icon-design.svg",
            altText: "design icon",
            title: "Web design",
            text: "The most modern and high-quality design made at a professional level."
        ),
        Service(
            imageURL: "./assets/images/icon-dev.svg",
            altText: "Web development icon",
            title: "Web development",
            text: "High-quality development of sites at the professional level."
        ),
        Service(
            imageURL: "./assets/images/icon-app.svg",
            altText: "mobile app icon",
            title: "Mobile apps",
            text: "Professional development of applications for iOS and Android."
        ),
        Service(
            imageURL: "./assets/images/icon-photo.svg",
            altText: "camera icon",
            title: "Photography",
            text: "I make high-quality photos of any category at a professional level."
        )
    ]
}
