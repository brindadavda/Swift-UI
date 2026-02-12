//
//  AnimationBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 13/06/24.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated : Bool = false
    
    var body: some View {
        VStack{
            Button(action: {
//                withAnimation(.default
//                    .repeatForever(autoreverses: true),{
                    isAnimated.toggle()
//                })
                    
            }, label: {
                Text("Animation")
                    .font(.largeTitle)
            })
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,height: isAnimated ? 100 : 300)
                .rotationEffect(.degrees(isAnimated ? 180 : 0))
                .offset(y : isAnimated ? 300 : 0)
                .animation(
                    Animation
                        .default.delay(0.2).repeatForever( autoreverses: true), value: isAnimated)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
