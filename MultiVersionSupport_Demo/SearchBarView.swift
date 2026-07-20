import SwiftUI

struct SearchBarView: View {
    @Binding var query: String

    var body: some View {
        let field = fieldContent

        field.cardSurface()
    }

    private var fieldContent: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search cards", text: $query)
        }
        .padding(12)
    }
}

struct FilterChipView: View {
    let title: String

    var body: some View {
        let chip = chipContent

        chip.cardSurface()
    }

    private var chipContent: some View {
        Text(title)
            .font(.caption.weight(.semibold))
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
    }
}
