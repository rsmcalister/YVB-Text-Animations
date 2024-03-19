//
//  CardView.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/18/24.
//

import SwiftUI

struct CardView: View {
    let verse: Verse
    @State private var animate = false

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
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
                .foregroundColor(.white)
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
