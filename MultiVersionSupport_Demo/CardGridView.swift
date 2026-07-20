import SwiftUI

struct CardGridView: View {
    private let cards = Card.sample

    var body: some View {
        ScrollView {
            FeaturedBannerView(card: cards[0])
                .padding(.horizontal)

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))], spacing: 16) {
                ForEach(cards) { card in
                    NavigationLink(value: card) {
                        CardCellView(model: card)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .navigationTitle("CardStack")
        .navigationDestination(for: Card.self) { card in
            CardDetailView(card: card)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
           
                    NavigationLink("Browse") {
                        if #available(iOS 26, macOS 26, *) {
                            SpatialCardBrowser()
                        }
                    }
                
            }
        }
    }
}

private struct FeaturedBannerView: View {
    let card: Card

    var body: some View {
        let banner = bannerContent

        banner.cardSurface()
    }

    private var bannerContent: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Featured").font(.caption).foregroundStyle(.secondary)
                Text(card.title).font(.title2.bold())
            }
            Spacer()
        }
        .padding(20)
    }
}

private struct CardCellView: View {
    let model: Card

    var body: some View {
        let card = cardContent

        card.cardSurface()
    }

    private var cardContent: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(model.title).font(.headline)
            Text(model.subtitle).font(.subheadline).foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
