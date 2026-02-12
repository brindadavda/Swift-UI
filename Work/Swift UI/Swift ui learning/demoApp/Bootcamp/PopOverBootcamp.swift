//
//  PopOverBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 14/06/24.
//

import SwiftUI

//Three mode to represent the pop up scren
///1. sheets
///2. transition
///3. animation
///
struct PopOverBootcamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
        
            VStack{
                Button(action: {
                    withAnimation(.spring, {
                        showNewScreen.toggle()
                    })
                }, label: {
                    Text("Button".uppercased())
                        .font(.largeTitle)
                })
                
                Spacer()
            }
            
            
            //MARK: - Method 1 ( sheet )
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
//            //MARK: - Method 2 ( Transition )
//            ZStack{
//                if showNewScreen{
//                    NewScreen( showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                
//                }
//            }
//            .zIndex(2.0)
            
            //MARK: - Method 3 (Animation)
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showNewScreen)
        }
    }
}

struct NewScreen : View{
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen  : Bool
    
    var body: some View{
        ZStack(alignment: .topLeading, content: {
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
//                dismiss()
                
                withAnimation(.easeOut,{
                    showNewScreen.toggle()
                })
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
            })
        })
        
    }
}

#Preview {
    PopOverBootcamp()
}

//#Preview{
//    NewScreen()
//}
