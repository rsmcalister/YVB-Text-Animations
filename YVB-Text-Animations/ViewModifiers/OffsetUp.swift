//
//  OffsetUp.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/19/24.
//

import SwiftUI

struct OffsetUp: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .offset(y: animate ? 0 : 40 )
    }
}

extension View {
    func offsetUp(with animate: Bool) -> some View {
        modifier(OffsetUp(animate: animate))
    }
}
