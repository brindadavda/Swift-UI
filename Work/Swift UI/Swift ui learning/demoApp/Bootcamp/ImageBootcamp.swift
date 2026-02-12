//
//  ImageBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 11/06/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("img1")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
            //.cornerRadius(10)
            .frame(width: 300)
            //.clipShape(Circle())
            .foregroundColor(.red )
        
    }
}

#Preview {
    ImageBootcamp()
}
