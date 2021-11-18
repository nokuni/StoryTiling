//
//  LibraryView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

struct LibraryView: View {
    @EnvironmentObject var vm: StoryViewModel
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    
                    // Title "My Stories"
                    LibraryTitleView(title: "My Stories")
                    
                    // If the collection of user stories is not empty, show it. Otherwise, show the placeholder.
                    if !vm.userStories.isEmpty {
                        LibraryRowView(stories: vm.userStories, width: geometry.size.width)
                    } else {
                        MyStoriesPlaceholderView()
                    }
                    
                    // Title "Favorites Stories"
                    LibraryTitleView(title: "Favorites Stories")
                    
                    // If the collection of user favorite stories is not empty, show it. Otherwise, show the placeholder.
                    if !vm.favoriteStories.isEmpty {
                        LibraryRowView(stories: vm.favoriteStories, width: geometry.size.width)
                    } else {
                        FavoriteStoriesPlaceholderView()
                    }
                    
                    // Title "Well-Known Stories"
                    LibraryTitleView(title: "Well-Known Stories")
                    
                    // Collection of well known stories
                    LibraryRowView(stories: Story.wellknown, width: geometry.size.width)
                }
            }
            .padding()
            .navigationTitle("Library")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NewStoryButtonView()
                }
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .environmentObject(StoryViewModel())
    }
}
