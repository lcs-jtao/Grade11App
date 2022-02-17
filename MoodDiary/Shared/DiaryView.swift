//
//  DiaryView.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2022-02-16.
//

import SwiftUI

struct DiaryView: View {
    
    @State var inputText = ""
    @State var mood: String
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .strokeBorder()
                    .frame(width: 300, height: 200)
                VStack {
                    Image(mood)
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text(mood)
                        .font(.title)
                        .bold()
                        .shadow(color: Color.green, radius: 4, x: 0, y: 6)
                        .foregroundColor(Color.black.opacity(0.6))
                    TextField("Tell us about your day!", text: $inputText)
                }
                .padding()
            }
            Spacer()
        }
        .padding()
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiaryView(mood: "Happy")
        }
    }
}
