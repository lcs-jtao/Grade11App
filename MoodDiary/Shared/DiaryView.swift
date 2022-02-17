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
    @State var entries: [DiaryEntry] = []
    
    var body: some View {
        VStack {
            DatePicker("Date", selection: .constant(Date()), displayedComponents: .date)
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
            Button(action: {
                entries.append(DiaryEntry(details: inputText))
                inputText = ""
            }, label: {
                Text("Save Diary")
            })
                .buttonStyle(.bordered)
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(Capsule())
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
