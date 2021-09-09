//
//  AppModel.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio = Portfolio(name: "@Rushi Patel", role: "iOS Developer", description: "Immensely passionate about iOS and related technologies. A deep affection with UI/UX development and tenkering with tech", Location: "Toronto, CA", skills: [
        skills(id: UUID().uuidString, skillName: "Swift", image: "iphone"),
        skills(id: UUID().uuidString, skillName: "Swift UI", image: "swift"),
        skills(id: UUID().uuidString, skillName: "UI/UX", image: "hand.tap.fill"),
        skills(id: UUID().uuidString, skillName: "CI/CD", image: ""),
        skills(id: UUID().uuidString, skillName: "C#", image: "")
    ], experience: [
    Experience(id: UUID().uuidString, companyName: "Free Lance", duration: "March 2021 - April 2021", role: "iOS Developer"),
    Experience(id: UUID().uuidString, companyName: "Starbucks", duration: "Sept. 2019 - Oct. 2020", role: "Barista")
    ])
}
