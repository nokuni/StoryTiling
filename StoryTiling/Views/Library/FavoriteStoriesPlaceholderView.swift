//
//  FavoriteStoriesPlaceholderView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

// The view for the favorite Stories placeholder image.
struct FavoriteStoriesPlaceholderView: View {
    var body: some View {
        Image("favorite")
            .resizable()
            .scaledToFit()
            .shadow(radius: 5)
    }
}

struct FavoriteStoriesPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteStoriesPlaceholderView()
    }
}
