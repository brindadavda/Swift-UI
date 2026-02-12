//
//  AlertBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 17/06/24.
//

import SwiftUI

enum AlertUpdate{
    case sucess
    case error
    
    var alertTitle : String{
        switch self{
        case .error: "Error Alert Title"
        case .sucess : "Sucess Alert Ttile"
        }
    }
    
    var alertMessage : String{
        switch self{
        case .error: "Error Alert Message"
        case .sucess : "Sucess Alert Message"
        }
    }
}

struct AlertBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var bgColor : Color = .red
    @State var alertType : AlertUpdate? = nil
 
    var body: some View {
        
        ZStack{
            bgColor.opacity(0.6)
            
            VStack{
                Button(action: {
                    alertType = .sucess
                    showAlert.toggle()
                }, label: {
                    Text("Sucess alert!".capitalized)
                })
                
                Button(action: {
                    alertType = .error
                    showAlert.toggle()
                }, label: {
                    Text("Error alert!".capitalized)
                })
            }
            .padding(30)
            .foregroundStyle(.yellow)
            .font(.title)
        }
        .alert(isPresented: $showAlert, content: {
            getCustomeAlert()
        })
        .ignoresSafeArea()
        
    }
    
    func getCustomeAlert() -> Alert{
        return Alert(title: Text(alertType?.alertTitle ?? ""), message: Text(alertType?.alertMessage ?? ""),primaryButton: .destructive(Text("Ok")), secondaryButton: .cancel())
    }
    
    func getAlert() -> Alert{
        return  Alert(title: Text("Change Background"), message: Text("Are you sure?"), primaryButton:
                .destructive(Text("Ok")
                         , action: {
            bgColor = bgColor == .red ? .gray : .red
        }),
    secondaryButton: .cancel())
   
    }
}

#Preview {
    AlertBootcamp()
}
