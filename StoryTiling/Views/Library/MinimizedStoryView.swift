//
//  MinimizedStoryView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

struct MinimizedStoryView: View {
    var story: Story
    var width: CGFloat
    var tiles: [[Tile]] {
        story.tiles.separate(into: 2)
    }
    var isWellKnownStory: Bool {
        Story.wellknown.contains(where: { $0 == story })
    }
    var body: some View {
        VStack {
            if isWellKnownStory {
                Image(story.presentationImage)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.9)
            } else {
                ForEach(tiles.indices, id: \.self) { row in
                    HStack {
                        ForEach(tiles[row], id: \.self) { column in
                            Image(column.image)
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.8)
                                .background(Color.blue.cornerRadius(10))
                        }
                    }
                }
            }
            Text(story.name)
                .fontWeight(.bold)
                .font(.callout)
            Spacer()
        }
        .padding(.top)
    }
}

struct MinimizedStoryView_Previews: PreviewProvider {
    static var previews: some View {
        MinimizedStoryView(story: Story.wellknown[0], width: 190)
    }
}
