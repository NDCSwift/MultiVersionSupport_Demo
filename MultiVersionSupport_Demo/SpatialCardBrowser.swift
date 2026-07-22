import SwiftUI

// The feature with no pre-iOS 26 fallback — gated at the type level with
// @available instead of an inline branch inside the view. Callers (see
// CardGridView.swift) still have to gate the entry point itself, since a
// type-level @available only stops this view from being *instantiated* on
// unsupported OSes — it doesn't stop a button from *offering* it. See
// Part 3, "When a Feature Can't Degrade."
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


