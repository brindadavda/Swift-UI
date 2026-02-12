//
//  ContentView.swift
//  demoApp
//
//  Created by Brinda Davda on 07/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    var body: some View {
        
        TransitionBootcamp()
        
//        VStack {
//            HStack {
//                Text("Demo App")
//                Image(systemName: "heart").imageScale(.large).rotationEffect(.degrees(0)).opacity(1.0).tint(.purple).foregroundStyle(.brown).scaledToFill()
//            }
           
//            List(0..<16) { item in
//                Text("Hi there , this app just for fun, Happy coding!").font(.system(.headline).bold().lowercaseSmallCaps()).fontWeight(.semibold).foregroundColor(Color.yellow).multilineTextAlignment(.center).foregroundStyle(.orange)
//            }
        }
//        .padding(.bottom)
//    }
}

//MARK: - new image circlular view
struct CircularImageView : View {
    var body: some View {
        VStack(alignment: .center, content: {
//            Text("Circular ImageView Demo")
//                .font(.headline)
//                .fontWeight(.bold)
//                .foregroundColor(Color.gray)
//                .multilineTextAlignment(.center)
            Image("images").clipShape(.circle).overlay(content:{
                Circle().stroke(.gray,lineWidth: 4)
            }).shadow(radius: 30)
        }).padding()
        
    }
}

//MARK: - new MapKit
struct MapViewDemo : View {
    var body: some View {
//        Text("Map View Demo")
        Map(initialPosition: .region(region))
    }
    
    private var region : MKCoordinateRegion{
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: 90.000_34), span: MKCoordinateSpan(latitudeDelta: 0.4, longitudeDelta: 0.4)
        )
    }
}

//MARK: - Final View
struct FinalView : View {
    var body: some View {
//        VStack{
//            MapViewDemo().frame(height: 300)
//            CircularImageView().offset(y:-50)
//            Divider()
//            ContentView()
//            Spacer()
//        }
        TransitionBootcamp()
    }
}

#Preview {
    FinalView()
}
