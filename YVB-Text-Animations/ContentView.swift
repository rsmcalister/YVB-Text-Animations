//
//  ContentView.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    private  let verses = Data().verses
    
    var body: some View {
        GeometryReader { geo in
            TabView(selection: $selection)  {
                ForEach(verses) { verse in
                    CardView(verse: verse)
                        .tag(verse.id)
                        .padding(.horizontal)
                }
            }
            .tabViewStyle(.page)
            .onTapGesture { location in
                if location.x < geo.size.width / 2,
                   selection > 0 {
                    selection = selection - 1
                } else if selection < Data().verses.count {
                    selection = selection + 1
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
