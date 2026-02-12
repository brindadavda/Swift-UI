//
//  demoTCAApp.swift
//  demoTCA
//
//  Created by Brinda Davda on 27/09/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct demoTCAApp: App {
    
    static let store = Store(initialState: MathReducer.State()) {
        MathReducer()
          ._printChanges()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: demoTCAApp.store)
        }
    }
}
