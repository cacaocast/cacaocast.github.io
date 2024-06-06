//
//  Archives.swift
//
//
//  Created by Philippe Guitard on 2024-06-05.
//

import Foundation
import Ignite

struct Archives: StaticPage {
    var title = "Archives"
    var path: String
    var year: Int
    let current_year = Calendar.current.dateComponents([.year], from: Date()).year
    
    func body(context: PublishingContext) -> [BlockElement] {
        Section {
            Text("Épisodes de \(year)")
                .font(.title3)
                .foregroundStyle(.gray)
        }
        .margin(.top, .extraLarge)

        Section {
            Table {
                for content in context.content(ofType: "episodes").sorted(by: \.date).filter({ year == Calendar.current.dateComponents([.year], from: $0.date).year }) {
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
        
        Section {
            for stride_year in stride(from: current_year!, through: 2009, by: -1) {
                Group {
                    if year == stride_year {
                        Text("\(stride_year)")
                    } else {
                        Link("\(stride_year)", target: "/Archives/\(stride_year)")
                    }
                }
            }
        }
    }
}
