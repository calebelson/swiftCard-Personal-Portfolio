import Foundation

struct Testimonial {
    let name: String
    let imageURL: String
    let text: String
    let date: String
    let datetime: String
}

struct TestimonialsData {
     static let testimonials: [Testimonial] = [
        Testimonial(
            name: "Daniel lewis",
            imageURL: "./assets/images/avatar-1.png",
            text: "Richard was hired to create a corporate identity. We were very pleased with the work done. She has a lot of experience and is very concerned about the needs of client. Lorem ipsum dolor sit amet, ullamcous cididt consectetur adipiscing elit, seds do et eiusmod tempor incididunt ut laborels dolore magnarels alia.",
            date: "June 14, 2021",
            datetime: "2021-06-14"
        ),
        Testimonial(
            name: "Jessica miller",
            imageURL: "./assets/images/avatar-2.png",
            text: "Richard was hired to create a corporate identity. We were very pleased with the work done. She has a lot of experience and is very concerned about the needs of client. Lorem ipsum dolor sit amet, ullamcous cididt consectetur adipiscing elit, seds do et eiusmod tempor incididunt ut laborels dolore magnarels alia.",
            date: "June 14, 2021",
            datetime: "2021-06-14"
        ),
        Testimonial(
            name: "Emily evans",
            imageURL: "./assets/images/avatar-3.png",
            text: "Richard was hired to create a corporate identity. We were very pleased with the work done. She has a lot of experience and is very concerned about the needs of client. Lorem ipsum dolor sit amet, ullamcous cididt consectetur adipiscing elit, seds do et eiusmod tempor incididunt ut laborels dolore magnarels alia.",
            date: "June 14, 2021",
            datetime: "2021-06-14"
        ),
        Testimonial(
            name: "Henry william",
            imageURL: "./assets/images/avatar-4.png",
            text: "Richard was hired to create a corporate identity. We were very pleased with the work done. She has a lot of experience and is very concerned about the needs of client. Lorem ipsum dolor sit amet, ullamcous cididt consectetur adipiscing elit, seds do et eiusmod tempor incididunt ut laborels dolore magnarels alia.",
            date: "June 14, 2021",
            datetime: "2021-06-14"
        )
    ]
}