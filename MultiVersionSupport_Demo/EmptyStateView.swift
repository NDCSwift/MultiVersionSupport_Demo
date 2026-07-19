import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        let content = emptyContent

        if #available(iOS 26, *) {
            content.glassEffect(.regular, in: .rect(cornerRadius: 24))
        } else {
            content.background(.ultraThinMaterial, in: .rect(cornerRadius: 24))
        }
    }

    private var emptyContent: some View {
        VStack(spacing: 12) {
            Image(systemName: "square.stack.3d.up.slash")
                .font(.largeTitle)
            Text("No cards yet")
                .font(.headline)
        }
        .padding(32)
    }
}
