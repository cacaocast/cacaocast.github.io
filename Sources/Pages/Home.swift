import Foundation
import Ignite

struct Home: StaticPage {
    var title = "CacaoCast"
    let dateFormatter = ISO8601DateFormatter()
    let current_year = Calendar.current.dateComponents([.year], from: Date()).year

    func body(context: PublishingContext) -> [BlockElement] {
        Section {
            Card {
                Image("/images/avatar@2x.png", description: "Logo cacaocast")
                    .frame(width: 128)
            } footer: {
                Text("CacaoCast")
                    .font(.title2)
                
                Text("Le site du balado CacaoCast")
                    .font(.title4)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
            }
            .cardStyle(.default)
        }
        .horizontalAlignment(.center)
        .width(2)
        .padding(.horizontal, 600)
        
        Section {
            Text("Derniers épisodes…")
                .font(.title3)
                .foregroundStyle(.gray)
        }
        .margin(.top, .extraLarge)
        
        Section {
            Table {
                for content in context.content(ofType: "episodes").sorted(by: \.date, order: .reverse)[...4] {
                    Row {
                        Column {
                            Link(content)
                        }
                        
                        Column {
                            Text(content.date.formatted(.dateTime
                                    .day(.twoDigits)
                                    .month(.wide)
                                    .year(.defaultDigits)
                                    .locale(Locale(identifier: "fr_FR"))
                                )
                            )
                            .fontWeight(.ultraLight)
                            .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .tableBorder(false)
        }
        .width(6)
    }
}
