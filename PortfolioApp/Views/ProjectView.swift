//
//  ProjectView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-12.
//

import SwiftUI

struct ProjectView: View {
    let projects : Projects
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                HStack{
                    VStack{
                        HStack{
                            VStack{
                                Circle().frame(width: 10, height: 10)
                                    .opacity(0.65)
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width : 3)
                                    .padding(.leading,3);
                            }
                            VStack{
                                Text(projects.projectName)
                                    .font(Montserrat.semibold.font(size: 18.5)).padding(.leading,8);
                                VStack(alignment: .leading){
                                    Text(projects.projectName)
                                        .font(Montserrat.mediumItalic.font(size: 16))
                                        .opacity(0.45)
                                        .padding(.top,14);
                                }
                            }
                        }.padding(.top,8)
                    }
                }
            }.fixedSize()
            Spacer()
            VStack{
                Image(projects.image)
                    .resizable()
                    .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ProjectView(projects: AppModel().portfolio.projects[0])}
    }
}
