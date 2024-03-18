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
                
                VStack(alignment: .leading) {
                    Text(verse.text)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(verse.address), ESV")
                        .font(.callout)
                        .fontWeight(.thin)
                        .padding([.top], 2)
                }
                .foregroundColor(.white)
                .padding()
                
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
