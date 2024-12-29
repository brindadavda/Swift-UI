//
//  MoodTrackerView.swift
//  StacksInSwift
//
//  Created by Brinda Davda on 29/12/24.
//

import SwiftUI

struct MoodTrackerView: View {
    @State private var selectedMood: String = "Happy"
    @State private var rotationAngle: Double = 0
    @State private var moodHistory: [(String, String)] = []

    private let moods = [
        ("Happy", "🙂"),
        ("Sad", "😢"),
        ("Excited", "🤩"),
        ("Relaxed", "😌"),
        ("Angry", "😡"),
        ("Love", "❤️")
    ]

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()

            VStack {
                Text("Daily Mood Tracker")
                    .font(.largeTitle)
                    .bold()
                    .padding()

                ZStack {
                    Circle()
                        .stroke(lineWidth: 10)
                        .foregroundColor(.gray.opacity(0.3))
                        .frame(width: 250, height: 250)

                    ForEach(0..<moods.count, id: \.self) { index in
                        let mood = moods[index]
                        let angle = Double(index) * (360.0 / Double(moods.count))
                        VStack {
                            Text(mood.1)
                                .font(.largeTitle)
                                .rotationEffect(.degrees(-angle))
                        }
                        .offset(x: 0, y: -110)
                        .rotationEffect(.degrees(angle))
                    }

                    Image(systemName: "hand.point.up.left.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .rotationEffect(.degrees(rotationAngle))
                        .animation(.easeInOut, value: rotationAngle)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    let center = CGPoint(x: 125, y: 125)
                                    let currentPoint = value.location
                                    let deltaX = Double(currentPoint.x - center.x)
                                    let deltaY = Double(center.y - currentPoint.y)
                                    rotationAngle = atan2(deltaY, deltaX) * (180 / .pi) + 180
                                }
                                .onEnded { _ in
                                    let segment = 360.0 / Double(moods.count)
                                    let moodIndex = Int((rotationAngle + segment / 2) / segment) % moods.count
                                    selectedMood = moods[moodIndex].0
                                }
                        )
                }

                Text("Selected Mood: \(selectedMood)")
                    .font(.headline)
                    .padding()

                Button(action: {
                    withAnimation {
                        moodHistory.insert((selectedMood, moods.first(where: { $0.0 == selectedMood })?.1 ?? ""), at: 0)
                    }
                }) {
                    Text("Save Mood")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(moodHistory, id: \.0) { mood in
                            HStack {
                                Text(mood.1)
                                    .font(.caption)
                                Text(mood.0)
                                    .font(.callout)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .transition(.slide)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

