
//  SkillView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import SwiftUI

struct SkillView: View {
    var skill : skills
    var width : CGFloat = 120
    var body: some View {
        VStack{
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8);
            Text(skill.skillName)
                .font(Montserrat.semibold.font(size: 13.5))
                .padding(.top,10)
        }.padding()
        .frame(width: width,height: 109.7)
        .background(RoundedRectangle(cornerRadius: 12)
                        .opacity(0.075))
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}