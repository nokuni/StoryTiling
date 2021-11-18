//
//  StoryView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import Foundation

struct Story: Equatable, Decodable {
    var name: String
    var presentationImage: String
    var tiles: [Tile]
    var isFavorite: Bool = false
}

extension Story {
    static let byDefault = Story(name: "Default", presentationImage: "", tiles: [Tile.byDefault, Tile.byDefault, Tile.byDefault, Tile.byDefault])
    static var wellknown: [Story] {
        Bundle.main.decode("WellKnownStories")
    }
}
