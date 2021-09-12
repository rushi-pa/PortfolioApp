//
//  ExpirencesView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-11.
//

import SwiftUI

struct ExpirencesView: View {
    var expirences : [Experience];
    @State var showExpirence = false
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing : 24){
                HStack(spacing: 16){
                    Text("Experiences")
                        .font(Montserrat.bold.font(size: 21))
                        .opacity(0.7);
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.35)){
                            self.showExpirence.toggle()
                        }
                    }, label: {
                        Image(systemName: "chevron.up")
                            .font(.system(size: 18, weight: .medium))
                            .rotationEffect(self.showExpirence ? .zero : .degrees(180))
                    }).buttonStyle(PlainButtonStyle());
                }
                .padding(.bottom,14)
                if(showExpirence)
                {
                    ForEach(expirences) { experience in
                        ExpirenceView(experience: experience)
                    }
                }
            }.padding()
        }.fixedSize()
    }
}

struct ExpirencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ExpirencesView(expirences: AppModel().portfolio.experience)
        }
    }
}
