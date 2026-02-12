//
//  ButtonBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 13/06/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title : String = "Button Bootcamp".uppercased()
    
    @State var favColor : UIColor = #colorLiteral(red: 0.5052447552, green: 0.1250819493, blue: 0.2294689685, alpha: 1)
    @State var favIconName : String = "heart"
    
    func toggleHeartIcon(){
        favIconName = favIconName == "heart" ? "heart.fill" : "heart"
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
            
            //first way
            Button(action: {
                self.title = "Button Pressed!".uppercased()
            }, label: {
                Text("Press me!")
                    .padding(20)
            })
            
        
            //customeButton
            Button(action: {
                toggleHeartIcon()
            }, label: {
                Circle()
                    .fill(.white)
                    .shadow(radius: 10)
                    .padding(10)
                    .frame(width: 80,height: 80)
                    .overlay(content: {
                        Image(systemName: favIconName)
                            .resizable()
                            .foregroundStyle(Color(favColor))
                            .frame(width: 25,height: 25)
                           
                    })
            })
        }
        //.background(.red)
    }
    
}

#Preview {
    ButtonBootcamp()
}
