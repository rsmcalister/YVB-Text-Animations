//
//  SwipeUp.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/20/24.
//

import SwiftUI

struct SwipeUp: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .frame(height: animate ? 0 : .infinity)
    }
}

extension View {
    func swipeUp(with animate: Bool) -> some View {
        modifier(SwipeUp(animate: animate))
    }
}
