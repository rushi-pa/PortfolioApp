//
//  ProjectsView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-12.
//

import SwiftUI

struct ProjectsView: View {
    
    var projects : [Projects];
    @State var showProjects = false
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing : 24){
                HStack(spacing: 16){
                    Text("Projects")
                        .font(Montserrat.bold.font(size: 21))
                        .opacity(0.7);
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.35)){
                            self.showProjects.toggle()
                        }
                    }, label: {
                        Image(systemName: "chevron.up")
                            .font(.system(size: 18, weight: .medium))
                            .rotationEffect(self.showProjects ? .zero : .degrees(180))
                    }).buttonStyle(PlainButtonStyle());
                }
                .padding(.bottom,14)
                if(showProjects)
                {
                    ForEach(projects) { project in
                        ProjectView(projects: project)
                    }
                }
            }.padding()
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ProjectsView(projects:AppModel().portfolio.projects)}
    }
}
