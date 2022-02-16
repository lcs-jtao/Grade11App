//
//  EmotionButton.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2022-02-16.
//

import SwiftUI

struct EmotionButton: View {
    let imageName: String
    var body: some View {
        NavigationLink(destination: DiaryView(), label: {
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70)
        })
    }
}