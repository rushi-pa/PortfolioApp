//
//  Portfolio.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import Foundation

struct skills : Identifiable {
    var id : String
    let skillName : String
    let image : String
   // let skillsDetails : [skillsDetails]
}

struct skillsDetails : Identifiable{
    var id : String
    let name : String
    let image : [String]
    let details : String
}

struct Achievement : Identifiable{
    var id : String
    var tech : String
    var desc : String
}

struct Certificates : Identifiable{
    var id : String
    let certiName : String
    let CompanyName : String
    let duration : String
}

struct Projects : Identifiable {
    var id : String
    let projectName : String
    let image : String
    let projectDesc : String
    let projectsDetails : [ProjectDetails]
}

struct ProjectDetails : Identifiable {
    let id : String
    var desc : String
    let tech : [String]
    let image : [String]
}

struct Experience : Identifiable {
    var id : String
    let companyName : String
    let duration : String
    let role : String
}

struct Portfolio{
    var name : String
    var role : String
    var description : String
    var Location : String
    let projects : [Projects]
    let skills : [skills]
    let experience : [Experience]
    let certificates : [Certificates]
    let achievement : [Achievement]
}
