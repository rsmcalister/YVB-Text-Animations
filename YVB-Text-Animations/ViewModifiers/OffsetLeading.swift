//
//  OffsetLeading.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/19/24.
//

import SwiftUI

struct OffsetLeading: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .offset(x: animate ? 0 : 40 )
    }
}

extension View {
    func offsetLeading(with animate: Bool) -> some View {
        modifier(OffsetLeading(animate: animate))
    }
}
