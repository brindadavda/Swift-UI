//
//  ColorsBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 10/06/24.
//

import SwiftUI
import UIKit

let myColor = Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))

struct ColorsBootcamp: View {
  var body: some View {
    RoundedRectangle(cornerRadius: 25)
          .fill(Color(UIColor.secondarySystemBackground))
//          .fill(Color("CC"))
      
//          .fill(Color(#colorLiteral(red:0.3,green:0.1, blue:0.2,alpha : 1.0)))
//       .fill(Color("CustomColor"))
          .shadow(color: Color("shadowColor").opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ , x: 10 , y: 20)
      .frame(width: 300, height: 300)
//      .shadow(radius: Color.red, radius())
//       
  }
}


#Preview {
    ColorsBootcamp()
}
