//
//  FotterView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-12.
//
import SwiftUI
struct FooterView: View {
    var body: some View {
        VStack(alignment : .center){
            Text("Contact Me:")
                .font(Montserrat.bold.font(size: 23))
            HStack(spacing : 20){
                Button(action:  {UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/rushi-patel-b371a9209/")!)}, label: {
                    Image("F1")
                        .resizable()
                        .frame(width: 25, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                Button(action:  {UIApplication.shared.open(URL(string: "https://github.com/rushi-pa/iOS-WeatherAPI")!)}, label: {
                    Text("Gmail")
                        .font(Montserrat.bold.font(size: 20))
                });
                RoundedRectangle(cornerRadius: 8)
                    .frame(width : 3,height: 30)
                    .foregroundColor(.gray)
                    .opacity(0.6)
                Button(action:  {UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/rushi-patel-b371a9209/")!)}, label: {
                    Image("F2")
                        .resizable()
                        .frame(width: 20, height: 22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                Button(action:  {UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/rushi-patel-b371a9209/")!)}, label: {
                    Text("Linkdin")
                        .font(Montserrat.bold.font(size: 20))
                })
            }.padding()
            Text("© Copyrighted Rushi Patel")
                .font(Montserrat.italic.font(size: 12))
        }
    }
}

struct FotterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
