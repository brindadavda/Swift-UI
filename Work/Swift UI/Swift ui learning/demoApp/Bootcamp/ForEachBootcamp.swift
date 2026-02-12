//
//  ForEachBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    var datas : [String] = Array(repeating: "HI", count: 30)
    
    var body: some View {
        VStack(alignment: .center, content: {
            ForEach(datas.indices,id: \.self){index in
                HStack{
                    Circle()
                        .fill(.red)
                        .frame(width: 10,height: 10)
                    Spacer(minLength: 0)
                        .frame(height: 1)
                        .background()
                    Text("New Item at \(index) , Item is \(datas[index])")
                }
            }
        })
        .padding(.horizontal,90)
        .background(.gray)
       
    }
}

#Preview {
    ForEachBootcamp()
}
