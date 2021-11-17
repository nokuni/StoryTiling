//
//  LibraryRowView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

struct LibraryRowView: View {
    private let grid = [GridItem](repeating: GridItem(.flexible()), count: 2)
    var story: Story
    var width, height: CGFloat
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .cornerRadius(10)
            VStack {
                LazyVGrid(columns: grid, spacing: 3) {
                    ForEach(story.tiles.indices, id: \.self) { index in
                        Color.gray
                            .cornerRadius(10)
                            .frame(width: width * 0.4, height: height * 0.4)
                    }
                }
                Text(story.name)
            }
            .padding()
        }
        .frame(width: width, height: height)
    }
}

struct LibraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRowView(story: Story.byDefault, width: 400, height: 400)
    }
}

/*VStack {
 LazyVGrid(columns: grid) {
 ForEach(story.tiles.indices, id: \.self) { index in
 Color.gray
 .cornerRadius(10)
 .frame(width: 40, height: 40)
 }
 }
 .padding(8)
 Text(story.name)
 } */
