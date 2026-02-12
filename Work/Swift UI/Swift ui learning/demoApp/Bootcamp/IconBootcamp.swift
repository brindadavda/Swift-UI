//
//  IconBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 11/06/24.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "heart")
            .resizable()
            .aspectRatio(contentMode: .fill)
            //.font(.largeTitle)
            .font(.system(size: 300))
            .foregroundColor(Color(.systemGray))
            .frame(width: 300,height: 300,alignment: .center)
//            .clipped()
        
    }
}

#Preview {
    IconBootcamp()
}
