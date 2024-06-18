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
        .margin(.leading, .small)
        .margin(.top, .extraLarge)

        Section {
            Table {
                for content in context.content(ofType: "episodes").sorted(by: \.date).filter({ year == Calendar.current.dateComponents([.year], from: $0.date).year }) {
                    Row {
                        Column {
                            Text {
                                Link(content)
                                    .textDecoration(.none)
                                    .role(.dark)
                            }
                            .font(.title5)
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
        .margin(.top, .large)
        .margin([.leading, .trailing], .small)
        
        Section {
            if year < current_year! {
                Section {
                    Text {
                        Link(target: "/Archives/\(year + 1)") {
                            Image(systemName: "arrow-left", description: "\(year + 1)")
                            " \(year + 1)"
                        }
                    }
                    .font(.title6)
                }
                .horizontalAlignment(.leading)
            } else {
                Section {}
            }
            
            if year > 2009 {
                Section {
                    Text {
                        Link(target: "/Archives/\(year - 1)") {
                            "\(year - 1) "
                            Image(systemName: "arrow-right", description: "\(year - 1)")
                        }
                    }
                    .font(.title6)
                }
                .horizontalAlignment(.trailing)
            } else {
                Section {}
            }
        }
        .margin([.leading, .trailing], .small)
    }
}
