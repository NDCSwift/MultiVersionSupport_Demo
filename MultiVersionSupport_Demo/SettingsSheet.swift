import SwiftUI

struct SettingsSheet: View {
    var body: some View {
        let sheetBody = sheetContent

        sheetBody.cardSurface()
    }

    private var sheetContent: some View {
        NavigationStack {
            List {
                AppearanceRow()
                AboutRow()
            }
            .navigationTitle("Settings")
        }
    }
}

private struct AppearanceRow: View {
    var body: some View {
        let row = rowContent

        row.cardSurface()
    }

    private var rowContent: some View {
        Label("Appearance", systemImage: "circle.lefthalf.filled")
            .padding(.vertical, 8)
    }
}

private struct AboutRow: View {
    var body: some View {
        let row = rowContent

        row.cardSurface()
    }

    private var rowContent: some View {
        Label("About CardStack", systemImage: "info.circle")
            .padding(.vertical, 8)
    }
}
