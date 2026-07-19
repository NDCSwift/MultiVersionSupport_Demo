import SwiftUI

struct CardDetailView: View {
    let card: Card

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                DetailHeaderView(card: card)
                DetailActionBarView()
                DetailShareButtonView()
            }
            .padding()
        }
        .navigationTitle(card.title)
    }
}

private struct DetailHeaderView: View {
    let card: Card

    var body: some View {
        let header = headerContent

        if #available(iOS 26, *) {
            header.glassEffect(.regular, in: .rect(cornerRadius: 24))
        } else {
            header.background(.ultraThinMaterial, in: .rect(cornerRadius: 24))
        }
    }

    private var headerContent: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(card.title).font(.largeTitle.bold())
            Text(card.subtitle).font(.title3).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

private struct DetailActionBarView: View {
    var body: some View {
        let bar = barContent

        if #available(iOS 26, *) {
            bar.glassEffect(.regular, in: .rect(cornerRadius: 18))
        } else {
            bar.background(.ultraThinMaterial, in: .rect(cornerRadius: 18))
        }
    }

    private var barContent: some View {
        HStack(spacing: 20) {
            Label("Save", systemImage: "bookmark")
            Label("Route", systemImage: "map")
        }
        .padding()
    }
}

private struct DetailShareButtonView: View {
    var body: some View {
        let button = buttonContent

        if #available(iOS 26, *) {
            button.glassEffect(.regular, in: .rect(cornerRadius: 16))
        } else {
            button.background(.ultraThinMaterial, in: .rect(cornerRadius: 16))
        }
    }

    private var buttonContent: some View {
        Label("Share", systemImage: "square.and.arrow.up")
            .padding()
    }
}
