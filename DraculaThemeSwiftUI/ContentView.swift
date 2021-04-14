//
//  ContentView.swift
//  DraculaThemeSwiftUI
//
//  Created by Raphael Cerqueira on 14/04/21.
//

import Dracula
import SwiftUI

struct ContentView: View {
    let colors = [
        Color.draculaCurrent,
        Color.draculaForeground,
        Color.draculaComment,
        Color.draculaCyan,
        Color.draculaGreen,
        Color.draculaOrange,
        Color.draculaPink,
        Color.draculaPurple,
        Color.draculaRed,
        Color.draculaYellow
    ]
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.draculaBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                ForEach(0..<colors.count) { index in
                    Text("Dracula Theme")
                        .font(.system(size: CGFloat(29 - index)))
                        .foregroundColor(colors[index])
                        .padding()
                }
                
                Spacer()
            }
            .background(Color.draculaBackground)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
