//
//  NavigationBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 16/06/24.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        
        ZStack{
            Text("Navigate")
            
            NavigationView(content: {
                NavigationLink("Navigate", destination: NextScreen())
    //            {
    //
    //                ScrollView(content: {
    //                    FramBootcamp()
    //
    //                })
    //
    //            }
                .navigationTitle("Navigation Title")
                    .navigationBarTitleDisplayMode(.automatic)
                
                    //.toolbar(.hidden)
                    .toolbar{
                        ToolbarItem(placement: .topBarLeading, content: {
                            HStack{
                                Image(systemName: "person.fill")
                                Image(systemName: "flame.fill")
                                    
                            }.padding()
                        })
                        
                        ToolbarItem(placement: .topBarTrailing, content: {
                            
                        
                            
                            NavigationLink(destination: {
                                NextScreen()
                            }, label: {
                                Image(systemName: "gear")
                                    .foregroundStyle(.red)
                                    .padding()
                                    
                            })
                            
                            
                        })
                    }
            })
            
        }
    }
}



struct NextScreen : View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.blue.luminanceToAlpha().ignoresSafeArea()
                .navigationTitle("New Screen")
                .toolbar(.hidden)
        
            
            VStack{
                Button(action: {
                    dismiss()
                }, label: {Text("BACK BUTTON")})
                
                NavigationLink("New Screen!", destination: {
                    ImageBootcamp()
                        .ignoresSafeArea()
                })
            }
        }
    }
}

#Preview {
    NavigationBootcamp()
}
