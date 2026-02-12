//
//  StackBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 10, content: {
                getractView(fillColor: .gray ,50,50)/*.offset(CGSize(width: 50, height: 50))*/
                getractView(fillColor: .green)
                getractView(fillColor: .red,50,20)
    //                .offset(CGSize(width: -50, height: -50))
            }).padding(50)
                .background(.yellow)
            
            HStack(alignment: .top,spacing: 10, content: {
                getractView(fillColor: .gray ,50,50)/*.offset(CGSize(width: 50, height: 50))*/
                getractView(fillColor: .green)
                getractView(fillColor: .red,50,20)
    //                .offset(CGSize(width: -50, height: -50))
            })
            /*.background(GradientBootcamp())*/
            .shadow(color:.red,radius: 90,x: 0,y: 90)
        }
            
        
    }
    
    func getractView (fillColor: Color , _ width :CGFloat = 100 , _ height : CGFloat =  100) -> some View{
        return Rectangle()
            .fill(fillColor)
            .frame(width:width ,height: height,alignment: .center)
    }
}

#Preview {
    StackBootcamp()
}
