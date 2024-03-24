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
    @State var typeWriteActive = false
    @State private var text = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topLeading) {
                Text(verse.text)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.clear)
                
                Text(text)
                    .font(.title2)
                    .fontWeight(.bold)
                    .transition(.opacity)
            }
            
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
                self.typeWriteActive.toggle()
                typeWrite(by: .word)
            }
        }
        .onDisappear() {
            self.animateAddress = false
            self.typeWriteActive = false
            self.text = ""
        }
    }
    
    enum TypeWriteToken {
        case character
        case word
        case line
    }

    private func typeWrite(by: TypeWriteToken = .character) {
        guard typeWriteActive else { return }

        switch by {
        case .character:
            for char in verse.text {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {
                    self.text.append(char)
                }
            }
        case .word:
            for word in verse.text.split(separator: " ") {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    text.append(contentsOf: word + " ")
                }
            }
        case .line:
            for line in verse.text.split(separator: "\n") {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) {
                    text.append(contentsOf: line + "\n")
                }
            }
        }
    }
}

#Preview {
    VerseView1(verse: Data().verses[1])
        .background(Color.gray)
        .foregroundColor(.white)
}
