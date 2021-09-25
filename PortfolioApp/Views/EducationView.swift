//
//  EducationView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-12.
//

import SwiftUI

struct EducationView: View {
    @State var showExpirence = false
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing : 24){
                HStack(spacing: 16){
                    Text("Education")
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
                if(showExpirence){
                    VStack(alignment: .leading){
                        HStack{
                            Circle().frame(width: 10, height: 10)
                                .opacity(0.65)
                            VStack(alignment: .leading){
                            Text("Advanced Diploma in")
                                .font(Montserrat.semibold.font(size: 18.5)).padding(.leading,8)
                        Text("Computer Programming and Analysis")
                            .font(Montserrat.semibold.font(size: 18.5)).padding(.leading,8)}
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width : 3)
                                .padding(.leading,3);
                            VStack(alignment: .leading){
                                Text("Seneca College Of Arts and technology")
                                    .font(Montserrat.medium.font(size: 16.5))
                                    .opacity(0.75)
                                    .padding(.top,4);
                                
                                Text("Sept 2019 - Sept 2021")
                                    .font(Montserrat.mediumItalic.font(size: 16))
                                    .opacity(0.45)
                                    .padding(.top,14);
                                
                                
                            }.padding(.leading,16)
                        }
                    }.fixedSize()
                }
            }.padding()
        }.fixedSize()
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
