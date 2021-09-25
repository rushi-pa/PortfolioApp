//
//  HeaderView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-06.
//

import SwiftUI

struct HeaderView: View {
    var appModel : AppModel
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("5aae85ed-bc90-4119-8cf8-3dfd8a278544-1").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped().clipShape(Circle()).padding(4).background(Circle().opacity(0.7).shadow(radius: 5))
                Spacer()
            };
            Text(appModel.portfolio.name)
                .font(Montserrat.bold.font(size: 17))
                .padding(.top,8)
            Text(appModel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 18))
                .opacity(0.7)
                .padding(.top,-2)
            
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold));
                Text(appModel.portfolio.Location)
                    .font(Montserrat.medium.font(size: 17))
            }.padding(.top,10).opacity(0.6)
            Text(appModel.portfolio.description)
                .font(Montserrat.italic.font(size: 16))
                .opacity(0.6)
                .padding(.top,24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
    }
}
