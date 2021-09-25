//
//  AppModel.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio = Portfolio(name: "@Rushi Patel", role: "iOS Developer", description: "Immensely passionate about iOS and related technologies. A deep affection with UI/UX development and tenkering with tech", Location: "Toronto, CA", projects: [
        Projects(id: UUID().uuidString, projectName: "Twitter Clone", image: "P1", projectDesc: "March 2021 - April 2021", projectsDetails: [ProjectDetails(id: UUID().uuidString, desc: "", tech: ["Cocoa Pods"," FireBase"], image: ["L1","L2","L3","L4"])]),
        Projects(id: UUID().uuidString, projectName: "Uber Clone", image: "P2", projectDesc: "Sept 2021 - Present", projectsDetails: [ProjectDetails(id: UUID().uuidString, desc: "", tech: ["",""], image: ["",""])]),
        Projects(id: UUID().uuidString, projectName: "Weather App", image: "P3", projectDesc: "March 2021 - March 2021", projectsDetails: [ProjectDetails(id: UUID().uuidString, desc: "", tech: ["",""], image: ["",""])]),
        Projects(id: UUID().uuidString, projectName: "Space Money", image: "P4", projectDesc: "March 2021 - April 2021", projectsDetails: [ProjectDetails(id: UUID().uuidString, desc: "", tech: ["",""], image: ["",""])]),
    ], skills: [
        skills(id: UUID().uuidString, skillName: "iOS", image: "L1"),
        skills(id: UUID().uuidString, skillName: "Swift", image: "L2"),
        skills(id: UUID().uuidString, skillName: "Android", image: "L3"),
        skills(id: UUID().uuidString, skillName: "CI/CD", image: "L4"),
        skills(id: UUID().uuidString, skillName: "Java", image: "L5")
    ], experience: [
        Experience(id: UUID().uuidString, companyName: "Free Lance", duration: "March 2021 - April 2021", role: "iOS Developer"),
        Experience(id: UUID().uuidString, companyName: "Starbucks", duration: "Sept. 2019 - Oct. 2020", role: "Barista")
    ], certificates: [
        Certificates(id: UUID().uuidString, certiName: "iOS RESTful API developement", CompanyName: "Linkdin", duration: "April 2021 - May 2021"),
        Certificates(id: UUID().uuidString, certiName: "iOS TDD", CompanyName: "Linkdin", duration: "April 2021 - May 2021"),
        Certificates(id: UUID().uuidString, certiName: "iOS Threading and Dispatch", CompanyName: "Linkdin", duration: "April 2021 - May 2021"),
        Certificates(id: UUID().uuidString, certiName: "iOS Core Animations", CompanyName: "Linkdin", duration: "April 2021 - May 2021"),], achievement: [
            Achievement(id: UUID().uuidString, tech: "Swift", desc: "Top 5% of 127.2k users"),
            Achievement(id: UUID().uuidString, tech: "Java", desc: "Top 5% of 1.5M users"),
            Achievement(id: UUID().uuidString, tech: "Android", desc: "Top 5% of 578.3k users"),
            Achievement(id: UUID().uuidString, tech: "Agile", desc: "Top 15% of 1.4M users"),
            Achievement(id: UUID().uuidString, tech: "C++", desc: "Top 5% of 975.7k users"),
            Achievement(id: UUID().uuidString, tech: "C#", desc: "Top 5% of 666.5k users"),
            Achievement(id: UUID().uuidString, tech: "RestAPI", desc: "Top 30% of 670k users"),
        ])
}
