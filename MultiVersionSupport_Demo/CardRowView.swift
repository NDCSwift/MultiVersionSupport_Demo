import SwiftUI

struct CardRowView: View {
    let card: Card

    var body: some View {
        let row = rowContent

        if #available(iOS 26, *) {
            row.glassEffect(.regular, in: .rect(cornerRadius: 14))
        } else {
            row.background(.ultraThinMaterial, in: .rect(cornerRadius: 14))
        }
    }

    private var rowContent: some View {
        HStack {
            Text(card.title)
            Spacer()
            Text(card.subtitle).foregroundStyle(.secondary)
        }
        .padding()
    }
}

struct PinnedCardRowView: View {
    let card: Card

    var body: some View {
        let row = rowContent

        if #available(iOS 26, *) {
            row.glassEffect(.regular, in: .rect(cornerRadius: 14))
        } else {
            row.background(.ultraThinMaterial, in: .rect(cornerRadius: 14))
        }
    }

    private var rowContent: some View {
        HStack {
            Image(systemName: "pin.fill")
            Text(card.title)
            Spacer()
        }
        .padding()
    }
}
