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
    
    let skills : [skills]
    let experience : [Experience]
}
