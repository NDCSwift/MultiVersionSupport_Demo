import SwiftUI

struct SettingsSheet: View {
    var body: some View {
        let sheetBody = sheetContent

        if #available(iOS 26, *) {
            sheetBody.glassEffect(.regular, in: .rect(cornerRadius: 0))
        } else {
            sheetBody.background(.ultraThinMaterial, in: .rect(cornerRadius: 0))
        }
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

        if #available(iOS 26, *) {
            row.glassEffect(.regular, in: .rect(cornerRadius: 14))
        } else {
            row.background(.ultraThinMaterial, in: .rect(cornerRadius: 14))
        }
    }

    private var rowContent: some View {
        Label("Appearance", systemImage: "circle.lefthalf.filled")
            .padding(.vertical, 8)
    }
}

private struct AboutRow: View {
    var body: some View {
        let row = rowContent

        if #available(iOS 26, *) {
            row.glassEffect(.regular, in: .rect(cornerRadius: 14))
        } else {
            row.background(.ultraThinMaterial, in: .rect(cornerRadius: 14))
        }
    }

    private var rowContent: some View {
        Label("About CardStack", systemImage: "info.circle")
            .padding(.vertical, 8)
    }
}
