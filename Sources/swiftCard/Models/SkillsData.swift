import Foundation

struct Skill {
    let name: String
    let level: Int
}

struct SkillsData {
    static let skills = [
        Skill(name: "Web design", level: 80),
        Skill(name: "Graphic design", level: 70),
        Skill(name: "Branding", level: 90),
        Skill(name: "WordPress", level: 50)
    ]
}
