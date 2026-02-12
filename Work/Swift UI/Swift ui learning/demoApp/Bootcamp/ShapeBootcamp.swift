//
//  ShapeBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 10/06/24.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        //Circle()
//        Ellipse()
//        Capsule(style: .continuous)
        if #available(iOS 17.0, *) {
            RoundedRectangle(cornerRadius: 10)
            //            .fill(.red)
            //            .stroke(Color.blue,lineWidth: 10)
            //            .stroke(style: StrokeStyle(lineWidth: 20,lineCap: .square , dash: [20]))
                .trim(from: 0.2, to: 0.8)
                .stroke(Color.purple,lineWidth: 40, antialiased: true)
                .frame(width: 300,height: 100,alignment: .center)
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ShapeBootcamp()
}
