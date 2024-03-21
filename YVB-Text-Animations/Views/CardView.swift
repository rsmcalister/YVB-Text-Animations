//
//  CardView.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/18/24.
//

import SwiftUI

struct CardView: View {
    let verse: Verse
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                switch verse.id {
                case 0:
                    VerseView0(verse: verse)
                case 1:
                    VerseView1(verse: verse)
                default:
                    DefaultVerseView(verse: verse)
                }
                
                Spacer()
            }
        }
        .background(Color.gray)
        .cornerRadius(16)
    }
}

#Preview {
    CardView(verse: Data().verses[0])
}
