//
//  ContentView.swift
//  demoTCA
//
//  Created by Brinda Davda on 27/09/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<MathReducer>
    
    public init(store: StoreOf<MathReducer>) {
        self.store = store
    }
    
    var body: some View {
        WithPerceptionTracking {
            VStack {
                Text("\(store.count)")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                  HStack {
                    Button("-") {
                        store.send(.decrementBtnTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                    
                    Button("+") {
                        store.send(.incrementBtnTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                  }
            }
        }
    }
}

#Preview {
    ContentView(store:Store(initialState: MathReducer.State()) {
        MathReducer()
          ._printChanges()
      })
}
