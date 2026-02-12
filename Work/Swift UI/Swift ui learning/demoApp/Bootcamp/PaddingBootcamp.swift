//
//  PaddingBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                    .padding(.vertical,20)
                   
            Text("This is demo of padding bootcamp, This is descriprion box where you can create view and view it.")
            
        })
        .padding(.all,20)
        .background(Color.white
            .cornerRadius(10)
            .shadow(radius: 10))
    
    
        
    }
}

#Preview {
    PaddingBootcamp()
}
