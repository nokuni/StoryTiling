//
//  StoryView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import Foundation

struct Story {
    var name: String
    var tiles: [Tile]
}

extension Story {
    static let bydefault = Story(name: "Test", tiles: [])
}
