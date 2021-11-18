//
//  LibraryRowView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

// The view for horizontal scrollable collection of stories.
struct LibraryRowView: View {
    var stories: [Story]
    var width: CGFloat
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(stories.indices, id: \.self) { index in
                    VStack {
                        ZStack {
                            Color(UIColor.systemGray5)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                            MinimizedStoryView(story: stories[index], width: width)
                        }
                        .frame(width: width * 0.4)
                        if !Story.wellknown.contains(where: stories.contains) {
                            HStack {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                                Spacer()
                                Image(systemName: "heart")
                            }
                            .font(.title2)
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct LibraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRowView(stories: [Story.byDefault, Story.byDefault], width: 400)
    }
}
