//
//  CertificateView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-13.
//

import SwiftUI

struct CertificateView: View {
    var certificate : Certificates
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Circle().frame(width: 10, height: 10)
                    .opacity(0.65)
                Text(certificate.certiName)
                    .font(Montserrat.semibold.font(size: 18.5)).padding(.leading,8)}
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width : 3)
                    .padding(.leading,3);
                VStack(alignment: .leading){
                    Text(certificate.CompanyName)
                        .font(Montserrat.medium.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top,4);
                    
                    Text(certificate.duration)
                        .font(Montserrat.mediumItalic.font(size: 16))
                        .opacity(0.45)
                        .padding(.top,14);
                    
                    
                }.padding(.leading,16)
            }
        }.fixedSize()

    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView(certificate: AppModel().portfolio.certificates[0])
    }
}
