//
//  AppModel.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio = Portfolio(name: "@Rushi Patel", role: "iOS Developer", description: "Immensely passionate about iOS and related technologies. A deep affection with UI/UX development and tenkering with tech", Location: "Toronto, CA", projects: [
        Projects(id: UUID().uuidString, projectName: "twitter-clone", image: "L1", projectDesc: "Created a twitter clone app", projectsDetails: [ProjectDetails(id: UUID().uuidString, desc: "Key features")])
        ], skills: [
        skills(id: UUID().uuidString, skillName: "iOS", image: "L1"),
        skills(id: UUID().uuidString, skillName: "Swift", image: "L2"),
        skills(id: UUID().uuidString, skillName: "Android", image: "L3"),
        skills(id: UUID().uuidString, skillName: "CI/CD", image: "L4"),
        skills(id: UUID().uuidString, skillName: "Java", image: "L5")
    ], experience: [
    Experience(id: UUID().uuidString, companyName: "Free Lance", duration: "March 2021 - April 2021", role: "iOS Developer"),
    Experience(id: UUID().uuidString, companyName: "Starbucks", duration: "Sept. 2019 - Oct. 2020", role: "Barista")
    ])
}
