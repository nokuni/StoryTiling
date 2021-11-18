//
//  TileCategory.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import Foundation

enum TileCategory: String, Decodable {
    case incipit, adventure, conflict, resolution
    
    var questions: [String] {
        switch self {
        case .incipit:
            return ["Which are the character main motivations?", "What is the ordinary world, before the adventure starts?", "Are there any allies and/or a mentor?", "Why is needed an adventure?"]
        case .adventure:
            return ["Why does the main character refuse to adventure at first?", "Then, why does the main character accept the Call to Adventure?", "Which are the minor conflicts that obstruct the character in going to adventure?", "What is the extraordinary world?", "Who accompanies the main character through the adventure?"]
        case .conflict:
            return ["Who are the enemies?", "Which are the challenges that put the character on edge?", "Where is set the core conflict?", "What happens when approaching the core conflict?", "Which are the crisis points of the core conflict?"]
        case .resolution:
            return ["What is the reward?", "Are there any difficulties in the road back to the ordinary world?", "How does the character changed after the conflict?", "Is the ordinary world different now?"]
        }
    }
}
