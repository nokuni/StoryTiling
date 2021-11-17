//
//  TileModel.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import Foundation

struct Tile: Hashable {
    var name: String
    var image: String
    var category: TileCategory
    var description: String
    var questions: [String]
}

extension Tile  {
    static let byDefault = Tile(name: "Default", image: "heart.fill", category: .incipit, description: "description", questions: [])
}
