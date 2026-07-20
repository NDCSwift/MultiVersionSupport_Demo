import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        let content = emptyContent

        content.cardSurface()
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
