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

        header.cardSurface()
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

       
        
        bar.cardSurface()
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

        button.cardSurface()
    }

    private var buttonContent: some View {
        Label("Share", systemImage: "square.and.arrow.up")
            .padding()
    }
}
