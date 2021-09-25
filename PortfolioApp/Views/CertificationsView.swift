//
//  CertificationsView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-13.
//

import SwiftUI

struct CertificationsView: View {
    var certificates : [Certificates]
    @State var showExpirence = false
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing : 24){
                HStack(spacing: 16){
                    Text("Certifications")
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
                    ForEach(certificates) { certificate in
                       CertificateView(certificate: certificate)
                    }
                }
            }.padding()
        }.fixedSize()
    }
}

struct CertificationsView_Previews: PreviewProvider {
    static var previews: some View {
        CertificationsView(certificates: AppModel().portfolio.certificates)
    }
}
