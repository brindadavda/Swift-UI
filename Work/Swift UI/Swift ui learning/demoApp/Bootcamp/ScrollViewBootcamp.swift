//
//  ScrollViewBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//


//Note : LasyStack ( it will generate when view will appear in screen something like that not a preticular defination )
import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.vertical,showsIndicators: false , content: {
//            ForEachBootcamp()
//        })
//
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100){
                    index in
                    ScrollView(.horizontal,showsIndicators: false,content: {
                        HStack{
                            ForEach(0..<20,content: {index1 in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(color: .red, radius: 10)
                                    .padding()
                                    .overlay(content: {
                                        Text("Row : \(index) Col: \(index1)")
                                            .font(.title)
                                    })
                                
                            })
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
