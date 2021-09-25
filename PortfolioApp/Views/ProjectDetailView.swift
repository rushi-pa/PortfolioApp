//
//  ProjectDetailView.swift
//  PortfolioApp
//
//  Created by Rushi Patel on 2021-09-18.
//

import SwiftUI

struct ProjectDetailView: View {
    let project : ProjectDetails
    let colors = [Color.red,Color.blue,Color.pink,Color.yellow,Color.green]
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(project.image,id : \.self){ image in
                    let colorn = colors.randomElement()
                    item(image: image, color: colorn ?? Color.red)
                        .padding(.horizontal,10)
                }
            }
        }.padding(.horizontal,10)
    }
}
func item(image : String, color : Color) -> some View{
    return ZStack{
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(color)
            .frame(width: 300, height: 650, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        Image(image)
            .resizable()
            .cornerRadius(20)
            .frame(width: 300, height: 650, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
    }.rotation3DEffect(
        Angle(),
        axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
    )
}
func getRotationAngle()-> Angle{
    Angle(degrees: 180)
}
struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            ProjectDetailView(project: AppModel().portfolio.projects[0].projectsDetails[1])}
    }
}
