//
//  MainView.swift
//  MoodDiary
//
//  Created by Joyce Tao on 2021-11-24.
//

import SwiftUI

struct MainView: View {
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
                            Image("Circle")
                                .resizable()
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
