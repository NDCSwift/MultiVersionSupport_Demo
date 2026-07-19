import SwiftUI

struct SearchBarView: View {
    @Binding var query: String

    var body: some View {
        let field = fieldContent

        if #available(iOS 26, *) {
            field.glassEffect(.regular, in: .rect(cornerRadius: 20))
        } else {
            field.background(.ultraThinMaterial, in: .rect(cornerRadius: 20))
        }
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

        if #available(iOS 26, *) {
            chip.glassEffect(.regular, in: .capsule)
        } else {
            chip.background(.ultraThinMaterial, in: .capsule)
        }
    }

    private var chipContent: some View {
        Text(title)
            .font(.caption.weight(.semibold))
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
    }
}
