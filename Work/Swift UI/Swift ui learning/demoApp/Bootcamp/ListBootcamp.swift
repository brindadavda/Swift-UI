//
//  ListBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 17/06/24.
//

import SwiftUI

struct ListBootcamp: View {

    @State var data : [String] = ["1","2","3","4","5"]
    @State var data2 : [String] = ["1d","2d","3d","4d","5d"]
    
    var body: some View {
        NavigationView {
            List{
               
                    
                    Section(content: {
                        ForEach(data , id: \.self){ data in
                            Text(data)
                                .foregroundStyle(.green)
                        }
                        .onDelete(perform: delete(indexSet:))
                        .onMove(perform: move(from:to:))
                    }, 
                             header: {
                        HStack{
                            Text("Fruites")
                            Image(systemName: "flame.fill")
                                
                        }
                        .font(.title)
                        .foregroundStyle(.red)
                    })
                
                
                Section(header: Text("Vaggies")){
                    ForEach(data2 , id: \.self){ data in
                        Text(data)
                            .foregroundStyle(.green)
                    }
                    .onDelete(perform: delete(indexSet:))
                    .onMove(perform: move(from:to:))
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading , content: {
                    EditButton()
                })
                
                ToolbarItem(placement: .topBarTrailing, content: {
                    addBtn
                })
            })
        }
        
    }
    
    
    var addBtn : some View{
        Button(action: {
           add()
        }, label: {
            Text("Add")
        })
    }
    
    
    func delete(indexSet : IndexSet){
        data.remove(atOffsets: indexSet)
    }
    
    func add(){
        data.append("10")
    }
    
    
    ///this is not working
    func move(from source: IndexSet, to destination: Int) {
            data.move(fromOffsets: source, toOffset: destination)
        }
    
    
}

#Preview {
    ListBootcamp()
}
