//
//  AchievemnetView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-17.
//

import SwiftUI

struct AchievemnetView: View {
    var achievement : Achievement
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Circle().frame(width: 10, height: 10)
                    .opacity(0.65)
                Text(achievement.tech)
                    .font(Montserrat.semibold.font(size: 18.5)).padding(.leading,8)}
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width : 3)
                    .padding(.leading,3);
                VStack(alignment: .leading){
                    Text(achievement.desc)
                        .font(Montserrat.medium.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top,4);
                    
                }.padding(.leading,16)
            }
        }.fixedSize()

    }
}

struct AchievemnetView_Previews: PreviewProvider {
    static var previews: some View {
        AchievemnetView(achievement: AppModel().portfolio.achievement[0])
    }
}
