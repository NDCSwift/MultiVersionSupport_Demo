//
        //
    //  Project: MultiVersionSupport_Demo
    //  File: Surfaces.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    


import SwiftUI

struct CardSurface: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 26, *) {
            content.glassEffect(.regular, in: .rect(cornerRadius: 20))
        } else {
            content.background(.ultraThinMaterial, in: .rect(cornerRadius: 20))
        }
    }
}

extension View {
    func cardSurface() -> some View {
        modifier(CardSurface())
    }
}




