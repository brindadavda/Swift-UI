//
//  ActionSheetBootcamp.swift
//  demoApp
//
//  Created by Brinda Davda on 17/06/24.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State private var showActionSheet = false
    var body: some View {
        Button("Tap to show action sheet") {
            showActionSheet = true
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Resume Workout Recording"),
                        message: Text("Choose a destination for workout data"),
                        buttons: [
                            .cancel(),
                            .destructive(
                                Text("Overwrite Current Workout"),
                                action: {}
                            ),
                            .default(
                                Text("Append to Current Workout"),
                                action: {}
                            )
                        ]
            )
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
