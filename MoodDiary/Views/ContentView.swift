//
//  ContentView.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2021-11-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("2021")
                .font(.title)
                .bold()
            Text("November")
                .bold()
            Spacer()
            ForEach(0...5, id: \.self) { r in
                HStack {
                    ForEach(1...5, id: \.self) { i in
                        ZStack {
                            Circle()
                                .fill(Color.blue.opacity(0.3))
                                .frame(width: 50, height: 50)
                            Text("\(i + 5 * r)")
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
