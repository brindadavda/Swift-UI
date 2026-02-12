//
//  AnimationTimingBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 13/06/24.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimated : Bool = false
    let timing : Double = 10.0
    
    var body: some View {
        VStack{
            Button(action: {
                isAnimated.toggle()
            }, label: {
                Text("Animation")
                    .font(.largeTitle)
            })
            
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimated ? .infinity : 150 ,height: 100)
                .animation(.spring(response: 3.0,
                                   dampingFraction: 0.6,
                                   blendDuration: 1.0), value: isAnimated)
                .padding()
//                .animation(.bouncy(duration: timing), value: isAnimated)
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimated ? .infinity : 150 ,height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimated)
//                .padding()
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimated ? .infinity : 150 ,height: 100)
//                .animation(.linear(duration: timing), value: isAnimated)
//                .padding()
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimated ? .infinity : 150 ,height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimated)
//                .padding()
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
