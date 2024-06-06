//
//  Episode.swift
//
//
//  Created by Philippe Guitard on 2024-05-29.
//

import Foundation
import Ignite

struct Episode: ContentPage {
    let dateFormatter = ISO8601DateFormatter()
    
    func body(content: Content, context: PublishingContext) -> [any BlockElement] {
        Section {
            Text(content.title)
                .font(.title1)
        }
        .width(2)
        .padding(.horizontal, 350)
        .margin(.bottom, .extraLarge)
        .horizontalAlignment(.center)
        
        Section {
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
        .horizontalAlignment(.center)
        .width(2)
        .padding(.horizontal, 350)
        .margin(.bottom, .extraLarge)
        
        Section {
            Text(content.body)
                .fontWeight(.ultraLight)
        }
        .width(2)
        .padding(.horizontal, 350)
        .margin(0)
    }
}
