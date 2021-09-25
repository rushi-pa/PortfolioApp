//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.

import SwiftUI

struct PortfolioView: View {
    var appModel : AppModel = AppModel()
    var body: some View {
        NavigationView{
            ZStack{
                
                Color(UIColor.systemBackground).ignoresSafeArea()
                ScrollView(.vertical){
                    VStack(alignment: .leading){
                        HeaderView(appModel: appModel)
                        
                        SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                            .padding(.top,24);
                        
                        ExpirencesView(expirences: appModel.portfolio.experience)
                            .padding(.top,9)
                        Spacer()
                        ProjectsView(projects: appModel.portfolio.projects)
                            .padding(.top,1)
                        EducationView();
                        CertificationsView(certificates: appModel.portfolio.certificates)
                        AchievementsView(achievements: appModel.portfolio.achievement)
                        Divider()
                            .frame(height:3)
                        
                    }.padding(12)
                    VStack{
                        FooterView()
                    }
                }
            }.padding(.top,-80)
        }.navigationBarHidden(true)
    
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView().colorScheme(.dark)
    }
}
