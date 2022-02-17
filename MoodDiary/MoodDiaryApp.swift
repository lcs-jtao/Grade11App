//
//  MoodDiaryApp.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2021-11-24.
//

import SwiftUI

@main
struct MoodDiaryApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                MainView()
                    .tabItem({
                        Image(systemName: "calendar")
                        Text("Calendar")
                    })
                MoodView()
                    .tabItem({
                        Image(systemName: "face.dashed")
                        Text("Mood")
                    })
            }
        }
    }
}
