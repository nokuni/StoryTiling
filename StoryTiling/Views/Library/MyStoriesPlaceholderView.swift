//
//  LibraryPlaceholderView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

// The view for the My Stories placeholder
struct MyStoriesPlaceholderView: View {
    var body: some View {
        ZStack {
            Color.veryLightBlue.cornerRadius(10)
                .shadow(radius: 5)
            VStack {
                Text("Looks like you need some help...")
                    .fontWeight(.bold)
                Image("typewriter")
                    .resizable()
                    .scaledToFit()
            }
            .padding(10)
        }
    }
}

struct MyStoriesPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        MyStoriesPlaceholderView()
    }
}
