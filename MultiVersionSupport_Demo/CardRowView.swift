import SwiftUI

struct CardRowView: View {
    let card: Card

    var body: some View {
        let row = rowContent

        row.cardSurface()
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

        row.cardSurface()
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
