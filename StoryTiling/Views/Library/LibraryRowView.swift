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
                ForEach(0..<5) { _ in
                    Color.gray.cornerRadius(10)
                        .frame(width: width * 0.4)
                }
            }
        }
    }
}

struct LibraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRowView(stories: [], width: 400)
    }
}
