//
//  GradientBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 11/06/24.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        Ellipse()
//            .fill(Gradient(colors: [Color.red,Color.blue]))
//            .fill(RadialGradient(colors: [.red,.blue, .green], center: .center, startRadius: 20, endRadius: 100))
            .fill(AngularGradient(colors: [.red,.blue], center: .topLeading, angle: .degrees(270)))
            .stroke(.brown,lineWidth: 5)
            .frame(width: 300,height: 300)
    }
}

#Preview {
    GradientBootcamp()
}
