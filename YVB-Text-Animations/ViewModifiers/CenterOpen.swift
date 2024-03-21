//
//  CenterOpen.swift
//  YVB-Text-Animations
//
//  Created by Scott McAlister on 3/20/24.
//

import SwiftUI

struct CenterOpen: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .frame(height: animate ? .infinity : 0)
    }
}

extension View {
    func centerOpen(with animate: Bool) -> some View {
        modifier(CenterOpen(animate: animate))
    }
}
