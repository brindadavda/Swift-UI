//
//  TextBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 10/06/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.body)
            //.fontWeight(.heavy)
//            .bold()
//            .underline(true,pattern: .solid, color: .red)
//            .strikethrough(true,pattern: .solid,color: .green)
        
//            .font(.system(size: 24,weight: .light, design: .rounded))
//            .baselineOffset(-50)
//            .multilineTextAlignment(.center)
//            .kerning(3.0)
//            .foregroundStyle(.red)
            .foregroundColor(.yellow)
            .frame(width: 100,height: 100,alignment: .bottom)
            .minimumScaleFactor(0.01)
    }
}

#Preview {
    TextBootcamp()
}
