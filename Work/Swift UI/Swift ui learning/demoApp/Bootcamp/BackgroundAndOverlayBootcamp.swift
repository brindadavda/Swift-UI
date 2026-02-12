//
//  BackgroundAndOverlayBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 11/06/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    
    let circle_width = 100
    let circle_hight = 100
    var count = 1
    let circle_color1 = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    let circle_color2 = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 100,height: 100)
//            )
//            
//            .background(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 120,height: 120)
//            )
        
//        Circle()
//            .fill(.red)
//            .overlay(Text("1")
//                .foregroundStyle(Color.yellow)
//                .font(.custom("34", size: 76))
//                .bold())
//            .frame(width: 120,height: 200,alignment: .center)
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 130,height: 230)
//                    .shadow(radius: 40)
//            )
//        Rectangle()
//            .frame(width: 100,height: 150)
//            .overlay(
//                Rectangle()
//                .fill(Color.gray)
//                .frame(width: 50,height: 50)
//                ,alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 100,height: 230, alignment: .bottom))
        
        Circle()
            .fill(Gradient(colors: [Color(uiColor: circle_color1),Color(uiColor: circle_color2)]))
            .overlay(
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundStyle(Color.white)
                    .frame(width: CGFloat(circle_width/2),height: CGFloat(circle_hight/2))
                    
            )
            .shadow(color: Color(uiColor: circle_color2), radius: 20,x: 10,y: 10)
            .overlay(
                Circle()
                    .frame(width: CGFloat(circle_width/4),height: CGFloat(circle_hight/4))
                    .overlay(Text(String(count)
                        .capitalized)
                        .font(.system(size:16))
                        .bold()
                        .foregroundStyle(Color(uiColor: circle_color2))
                ),
                alignment: .bottomTrailing
            )
            .frame(width: CGFloat(circle_width),height: CGFloat(circle_hight))
        
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
