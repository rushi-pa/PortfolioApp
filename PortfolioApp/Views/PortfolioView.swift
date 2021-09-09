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
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView().colorScheme(.dark)
    }
}
