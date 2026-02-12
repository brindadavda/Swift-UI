//
//  SpacerBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        ZStack(alignment: .leading, content: {
//            Rectangle()
//                .fill(.black)
//                .frame(width: .infinity,height: 10)
//                        Spacer()
            HStack(spacing: nil, content: {
                Spacer()
                Rectangle()
                    .fill(.red)
                    .frame(width: 50,height: 50)
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 50,height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(.orange)
                Rectangle()
                    .fill(.green)
                    .frame(width: 50,height: 50)
                    Spacer()
            })
            .background(.blue)
            .padding(.horizontal,100)
            .background(.black)
            
//        })
//        .padding(.horizontal,100)
    }
        
}

#Preview {
    SpacerBootcamp()
}
