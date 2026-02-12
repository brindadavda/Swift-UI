//
//  MathReducer.swift
//  demoTCA
//
//  Created by Brinda Davda on 27/09/24.
//

import Foundation
import ComposableArchitecture

@Reducer
struct MathReducer{
    
    @ObservableState
    public struct State : Equatable {
        var count = 0
    }
    
    public enum Action : Equatable {
        case incrementBtnTapped
        case decrementBtnTapped
    }
    
    var body : some ReducerOf<Self>{
        Reduce { state , action in
            switch action{
            case .incrementBtnTapped :
                state.count += 1
                return .none
            case .decrementBtnTapped :
                state.count -= 1
                return .none
            }
        }
    }
}
