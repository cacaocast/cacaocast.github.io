//
//  File.swift
//  
//
//  Created by Philippe Guitard on 2024-05-29.
//

import Foundation
import Ignite

/// Custom footer
struct CacaoCastFooter: Component {
    let year = Calendar.current.component(.year, from: Date())
    
    func body(context: PublishingContext) -> [any PageElement] {
        
        Group {
            Link(target: "https://mastodon.world/@cacaocast") {
                Text {
                    Image(systemName: "mastodon")
                }
                .font(.title4)
                .fontWeight(.ultraLight)
                .foregroundStyle(.grey)
            }
            
            Text {
                "Bâtit avec ❤️ et "
                Link("Ignite", target: URL("https://github.com/twostraws/Ignite"))
                " à Ottawa 🇨🇦"
            }
            .fontWeight(.ultraLight)
            .margin(.none)
            
            Text("© Copyright \(year) CacaoCast")
                .fontWeight(.ultraLight)
        }
        .horizontalAlignment(.center)
        .margin(.top, .extraLarge)
    }
}
