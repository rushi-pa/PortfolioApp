//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import SwiftUI

struct PortfolioView: View {
    var appModel : AppModel = AppModel()
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top,24);
                    
                    ExpirencesView(expirences: appModel.portfolio.experience)
                        .padding(.top,20)
                }.padding(12)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView().colorScheme(.dark)
    }
}
