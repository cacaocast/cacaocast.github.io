//
//  CacaoCastNavBar.swift
//
//
//  Created by Philippe Guitard on 2024-05-30.
//

import Foundation
import Ignite

/// Custom navigation bar.
struct CacaoCastNavBar: Component {
    let current_year = Calendar.current.dateComponents([.year], from: Date()).year
    
    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: "CacaoCast") {
            Link("À propos", target: About())
            
            Dropdown("Archives") {
                for year in stride(from: current_year!, through: 2009, by: -1) {
                    Link("\(year)", target: "/Archives/\(year)")
                }
            }
            
            Link(target: "/feed.rss") {
                Image(systemName: "rss-fill")
            }
        }
        .background(Color(hex: "#8c82d5"))
        .navigationBarStyle(.dark)
        .navigationItemAlignment(.trailing)
        .position(.fixedTop)
    }
}
