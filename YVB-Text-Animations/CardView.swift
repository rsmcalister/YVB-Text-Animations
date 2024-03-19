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
                        .offset(x: animate ? 0 : 40 )
                    
                    Text("\(verse.address), ESV")
                        .font(.callout)
                        .fontWeight(.thin)
                        .padding([.top], 2)
                        .offset(y: animate ? 0 : 40)
                }
                .foregroundColor(.white)
                .padding()
                .opacity(animate ? 1 : 0)
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
