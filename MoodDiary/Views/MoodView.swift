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
                Image("Happy")
                    .resizable()
                    .frame(width: 70, height: 70)
                Image("Calm")
                    .resizable()
                    .frame(width: 70, height: 70)
            }
            HStack {
                VStack {
                    Image("Sad")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Image("Exhausted")
                        .resizable()
                        .frame(width: 70, height: 70)
                }
                Text("How do you feel today?")
                    .bold()
                    .font(.title)
                    .shadow(color: Color.blue, radius: 15, x: 5, y: 5)
                    .foregroundColor(Color.gray)
                VStack {
                    Image("Speechless")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Image("Mad")
                        .resizable()
                        .frame(width: 70, height: 70)
                }
            }
            HStack {
                Image("Great")
                    .resizable()
                    .frame(width: 70, height: 70)
                Image("Depressed")
                    .resizable()
                    .frame(width: 70, height: 70)
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
