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
    var isFavorite: Bool = false
}

extension Story {
    static let byDefault = Story(name: "Default", tiles: [Tile.byDefault, Tile.byDefault, Tile.byDefault, Tile.byDefault])
}
