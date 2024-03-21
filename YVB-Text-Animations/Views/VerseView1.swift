//
//  VerseView1.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/19/24.
//

import SwiftUI

struct VerseView1: View {
    let verse: Verse
    @State var animateAddress = false
    @State var animate = false
    @State private var text = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.title2)
                .fontWeight(.bold)
                .transition(.opacity)
            
            Text("\(verse.address), ESV")
                .font(.callout)
                .fontWeight(.thin)
                .padding([.top], 2)
                .fadeIn(with: animateAddress)
        }
        .padding()
        .onAppear() {
            withAnimation(.linear(duration: 0.4)) {
                self.animateAddress.toggle()
            }
            withAnimation(.linear(duration: 0.4)) {
                verse.text.enumerated().forEach { index, ch in
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                        text += String(ch)
                    }
                }
            }
        }
        .onDisappear() {
            self.animateAddress = false
            self.animate = false
        }
    }
}

#Preview {
    VerseView1(verse: Data().verses[1])
        .background(Color.gray)
        .foregroundColor(.white)
}
