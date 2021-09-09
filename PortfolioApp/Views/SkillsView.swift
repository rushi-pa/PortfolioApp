//
//  SkillsView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-08.
//

import SwiftUI

struct SkillsView: View {
    var skills : [skills]
    var width : CGFloat
    @State var skillIsShow = true
    var body: some View {
        VStack{
            HStack(spacing: 16){
                Text("Skills")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.7);
                Button(action: {
                    self.skillIsShow.toggle()
                }, label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.skillIsShow ? .zero : .degrees(180))
                }).buttonStyle(PlainButtonStyle());
                
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(skills: AppModel().portfolio.skills, width: 400)
    }
}
