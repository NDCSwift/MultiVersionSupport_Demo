import Foundation

struct Card: Identifiable, Hashable {
    let id: UUID
    let title: String
    let subtitle: String

    init(id: UUID = UUID(), title: String, subtitle: String) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
    }
}

extension Card {
    static let sample: [Card] = [
        Card(title: "Denali", subtitle: "6,190 m"),
        Card(title: "Kilimanjaro", subtitle: "5,895 m"),
        Card(title: "Aconcagua", subtitle: "6,961 m"),
        Card(title: "Elbrus", subtitle: "5,642 m"),
        Card(title: "Vinson", subtitle: "4,892 m"),
        Card(title: "Puncak Jaya", subtitle: "4,884 m"),
    ]
}
