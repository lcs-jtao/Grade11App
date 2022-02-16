//
//  MoodView.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2021-12-06.
//

import SwiftUI

struct MoodView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                EmotionButton(imageName: "Happy")
                EmotionButton(imageName: "Calm")
            }
            HStack {
                VStack {
                    EmotionButton(imageName: "Sad")
                    EmotionButton(imageName: "Exhausted")
                }
                Text("How do you feel today?")
                    .bold()
                    .font(.title)
                    .shadow(color: Color.blue, radius: 15, x: 5, y: 5)
                    .foregroundColor(Color.gray)
                VStack {
                    EmotionButton(imageName: "Speechless")
                    EmotionButton(imageName: "Mad")
                }
            }
            HStack {
                EmotionButton(imageName: "Great")
                EmotionButton(imageName: "Depressed")
            }
            Spacer()
        }
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView()
    }
}
