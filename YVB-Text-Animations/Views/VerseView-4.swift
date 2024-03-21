//
//  VerseView.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/19/24.
//

import SwiftUI

struct DefaultVerseView: View {
    let verse: Verse
    @State var animate = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(verse.text)
                .font(.title2)
                .fontWeight(.bold)
                .offsetLeading(with: animate)
            
            Text("\(verse.address), ESV")
                .font(.callout)
                .fontWeight(.thin)
                .padding([.top], 2)
                .offsetUp(with: animate)
        }
        .padding()
        .fadeIn(with: animate)
        .onAppear() {
            withAnimation(.linear(duration: 0.6)) {
                self.animate.toggle()
            }
        }
        .onDisappear() {
            self.animate = false
        }
    }
}

#Preview {
    DefaultVerseView(verse: Data().verses[0])
        .background(Color.gray)
        .foregroundColor(.white)
}
