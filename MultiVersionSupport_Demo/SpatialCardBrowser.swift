import SwiftUI

// The feature with no iOS 18 fallback — gated at the type level, not with an
// inline branch. See Part 3, "When a Feature Can't Degrade."
@available(iOS 26, *)
struct SpatialCardBrowser: View {
    private let cards = Card.sample

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 24) {
                ForEach(cards) { card in
                    VStack(spacing: 8) {
                        Text(card.title).font(.title2.bold())
                        Text(card.subtitle).font(.caption).foregroundStyle(.secondary)
                    }
                    .frame(width: 220, height: 160)
                    .glassEffect(.regular, in: .rect(cornerRadius: 24))
                }
            }
            .padding(32)
        }
        .navigationTitle("Browse")
    }
}


