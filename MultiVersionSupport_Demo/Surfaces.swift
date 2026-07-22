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
        // Centralized here so every card/row/detail view can just call
        // .cardSurface() instead of repeating this #available check — see
        // CardGridView.swift and CardDetailView.swift for the call sites,
        // and Starter's CardDetailView.swift for what it looks like
        // duplicated across every view instead of consolidated once.
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


