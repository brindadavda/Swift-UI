//
//  TransitionBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 14/06/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom, content: 
                {
                    VStack {
                        Button(action: 
                                {
                            withAnimation(.easeInOut, {
                                showView.toggle()
                            })
                        }, label: {
                            Text("Animation")
                        })
                    
                        
                        Spacer()
                    }
                    
                   
            if showView{
                RoundedRectangle(cornerRadius: 30)
            .frame(height: UIScreen.main.bounds.height*0.5)
            .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//            .animation(.spring, value: showView)
           
            }
                  
                        
                }
        )
        .ignoresSafeArea(edges:.bottom)
        
       
    }
}

#Preview {
    TransitionBootcamp()
}
