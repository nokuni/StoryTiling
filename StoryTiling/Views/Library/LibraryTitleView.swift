//
//  LibraryTitleView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

// The view for the titles in the library("My Stories, Favorite Stories", "Well-Known Stories")
struct LibraryTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .font(.title3)
    }
}

struct LibraryTitleView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryTitleView(title: "title")
    }
}
