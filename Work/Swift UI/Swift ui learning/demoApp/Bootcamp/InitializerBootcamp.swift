//
//  InitializerBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 12/06/24.
//

import SwiftUI

enum Fruit : String{
    case apple = "Apple"
    case graps = "Graps"
    case banana = "Banana"
    case mango = "Manago"
    
    var color : Color{
        switch self{
        case .apple:
            return .red
        case .graps:
            return .green
        case .banana:
            return .yellow
        case .mango:
            return .orange
        }
    }
}

struct InitializerBootcamp: View {
    
    let backgroundColor : Color?
    let count : Int
    let textTitle : String
    
    init(backgroundColor: Color?, count: Int, textTitle: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.textTitle = textTitle
    }
    
    var body: some View {

        VStack(spacing: 12, content: {
            Text("\(String(describing: count))")
                .foregroundStyle(.red)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(textTitle)
                .font(.headline)
                .foregroundStyle(Color.white)
        })
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
        }
        
}

struct InitializerBootcamp_Preview : PreviewProvider{
    static var previews: some View{
        HStack{
            InitializerBootcamp(backgroundColor: Fruit.graps.color,count: 20 , textTitle: Fruit.graps.rawValue)
            InitializerBootcamp(backgroundColor: Fruit.mango.color,count: 20 , textTitle: Fruit.mango.rawValue)
        }
    }
}


