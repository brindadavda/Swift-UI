//
//  LasyStackBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//

import SwiftUI

struct LasyGridBootcamp: View {
    
    let columns : [GridItem] =
//    [
//        GridItem(.fixed(50),spacing: nil,alignment: .leading),
//        GridItem(.fixed(50),spacing: nil,alignment: .leading),
//        GridItem(.fixed(150),spacing: nil,alignment: .leading),
//        GridItem(.fixed(50),spacing: nil,alignment: .leading),
//        GridItem(.fixed(50),spacing: nil,alignment: .leading)]
    Array(repeating: GridItem(.flexible(),spacing: 3,alignment: nil), count: 3)
    
    var body: some View {
        ScrollView(content: {
            Rectangle()
                .fill(.white)
                .frame(height: 250)
                .overlay(content: {
                    Text("This is the lazy grid view demo")
                        .font(.system(size: 24))
                        .bold()
                })
            
            LazyVGrid(columns: columns, content: {
                Section(header: Text("section 1")
                    .font(.headline)
                    .foregroundStyle(.red), content: {
                    ForEach(0..<50){_ in
                        Rectangle()
                            .frame(height: 150)
                    }
                })
            })
        })
    }
}

#Preview {
    LasyGridBootcamp()
}
