//
//  ViewModel.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import Foundation

class StoryViewModel: ObservableObject {
    @Published var userStories = [Story]()
    
    // user stories filtered to only the favorite ones.
    var favoriteStories: [Story] {
        return userStories.filter { $0.isFavorite }
    }
    
    init() { }
}
