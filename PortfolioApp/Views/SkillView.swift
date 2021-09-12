
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
            
            Image(skill.image)
                .resizable()
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.system(size: 10, weight: .medium))
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
        SkillView(skill: AppModel().portfolio.skills[3])
    }
}
