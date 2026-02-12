//
//  SafeAreaBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 13/06/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
        }
        .background(.red)
        
//        ZStack {
//            //background view
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//               
//            
//            //forground view
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(.red)
//            
//        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
