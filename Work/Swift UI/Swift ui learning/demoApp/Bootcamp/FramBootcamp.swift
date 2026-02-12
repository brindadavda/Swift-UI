//
//  FramBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 11/06/24.
//

import SwiftUI

struct FramBootcamp: View {
    var body: some View {
        Text("Hello, Brinda!")
//            .background(Color.green)
//            .frame(width: 200,height: 200 , alignment: .center)
//            .background(.red)
//            .frame(maxWidth: .infinity ,
//                   maxHeight: .infinity,alignment: .center)
            .background(Color.yellow)
            .frame(width: 200 , height: 50)
            .background(Color.green)
            .frame(width: 250,height: 100,alignment: .center)
            .background(Color.purple)
            .frame(width: 300,height: 400)
            .background(GradientBootcamp())
        
    }
}

#Preview {
    FramBootcamp()
}
