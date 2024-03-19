//
//  FadeIn.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/19/24.
//

import SwiftUI

struct FadeIn: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .opacity(animate ? 1 : 0)
    }
}

extension View {
    func fadeIn(with animate: Bool) -> some View {
        modifier(FadeIn(animate: animate))
    }
}
