//
//  SheetsBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 14/06/24.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showScreen : Bool = false
    
    var body: some View
    {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
            Button(action: {
                showScreen.toggle()
            }, label: {
                Text("Go to Scound screen.")
                    .foregroundStyle(.green)
                    .padding(10)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
//            .fullScreenCover(isPresented: $showScreen, content: {
//                SecoundScreen()
//            })
            .sheet(isPresented: $showScreen, content: {
                ////Do Not add conditional logic in here
                SecoundScreen().ignoresSafeArea()
            })
        }
    }
}

struct SecoundScreen : View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            Color.red
                .ignoresSafeArea(edges: .all)
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        
        })
    }
}

#Preview {
    SheetsBootcamp()
}
