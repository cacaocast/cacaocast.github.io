//
//  Robots.swift
//
//
//  Created by Philippe Guitard on 2024-06-06.
//

import Foundation
import Ignite

/// An example custom robots.txt configuration file, blocking certain paths
/// from Google and Bing, and everything from ChatGPT.
struct Robots: RobotsConfiguration {
    var disallowRules: [DisallowRule]

    init() {
        disallowRules = [
            DisallowRule(name: "*", paths: ["/"])
        ]
    }
}
