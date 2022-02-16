//
//  EmotionButton.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2022-02-16.
//

import SwiftUI

struct EmotionButton: View {
    let imageName: String
    @State var chosenMood = ""
    var body: some View {
        NavigationLink(destination: DiaryView(mood: chosenMood), label: {
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70)
        })
        .task {
            chosenMood = imageName
        }
    }
}
