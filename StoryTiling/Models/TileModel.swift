//
//  TileModel.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import Foundation

struct Tile: Hashable, Decodable {
    var name: String
    var image: String
    var category: TileCategory
    var description: String
}

extension Tile  {
    static let byDefault = Tile(name: "Default", image: "spider", category: .incipit, description: "description")
}
