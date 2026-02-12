//
//  StateBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 13/06/24.
//

import SwiftUI

struct StateBootcamp: View {
    
     @State var backgroundColor : Color = .green
    
    @State var count : Int = 1
    
    var topLayer : some View{
        VStack{
            Text("Title")
                .font(.title)
            Text("Count \(count)")
                .font(.headline)
                .underline()
        }
    }
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            VStack(spacing: 20, content: {
            
                //extractracting view
                topLayer
            
                HStack(spacing: 20, content: {
                    pluseMinusButton(btnImage: Image(systemName: "minus.rectangle"), btnAction: {
                        backgroundColor = .green
                        count = count > 1 ? count - 1 : 1
                    }, imageColor: .blue)
                    
                    pluseMinusButton(btnImage: Image(systemName: "plus.rectangle"), btnAction: {
                        backgroundColor = .red
                        count += 1
                    }, imageColor: .blue)
                })
            })
            .foregroundStyle(.white)
        }
    }
}

struct pluseMinusButton : View{
    
    var btnImage : Image
    var btnAction : () -> Void
    let imageColor : Color
    
    init(btnImage: Image, btnAction: @escaping () -> Void, imageColor: Color) {
        self.btnImage = btnImage
        self.btnAction = btnAction
        self.imageColor = imageColor
    }
    
    var body: some View{
        Button(action: {
            btnAction()
        }, label: {
            Circle()
                .fill(.white)
                .shadow(radius: 10)
                .padding(10)
                .frame(width: 80,height: 80)
                .overlay(content: {
                    btnImage
                        .resizable()
                        .foregroundStyle(imageColor)
                        .frame(width: 25,height: 25)
                       
                })
        })
    }
}

#Preview {
    StateBootcamp()
}
