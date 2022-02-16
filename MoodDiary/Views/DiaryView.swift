//
//  DiaryView.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2022-02-16.
//

import SwiftUI

struct DiaryView: View {
    
    @State var inputText = ""
    var chosenMood = ""
    
    var body: some View {
        NavigationView {
            VStack {
                        Image(chosenMood)
                            .resizable()
                            .frame(width: 70, height: 70)
                        TextField("tell us how's your day", text: $inputText)
            }
        }
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiaryView()
        }
    }
}
