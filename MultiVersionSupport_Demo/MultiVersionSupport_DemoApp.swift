//
        //
    //  Project: MultiVersionSupport_Demo
    //  File: MultiVersionSupport_DemoApp.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    
import SwiftUI

@main
struct CardStackApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                CardGridView()
            }
        }
    }
}
