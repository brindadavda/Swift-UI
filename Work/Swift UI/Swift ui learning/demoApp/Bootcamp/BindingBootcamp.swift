//
//  BindingBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 13/06/24.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor : UIColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    
    var body: some View {
        ZStack{
            Color(uiColor: backgroundColor)
                .ignoresSafeArea(.all)
            
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView : View{
    
    @Binding var backgroundColor : UIColor
    @State var btnBackColor : Color = .red
    
    var body: some View{
        Button(action: {
            backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            btnBackColor = .red
        }, label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(btnBackColor)
                .overlay(content: {
                    Text("Button")
                        .foregroundStyle(.white)
                })
                .frame(width: 100,height: 50)
            
        })
        
    }
}

#Preview {
    BindingBootcamp()
}
