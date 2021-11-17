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
                    LibraryRowView(title: "My Stories", width: geometry.size.width * 0.5, height: geometry.size.height * 0.3)
                    LibraryRowView(title: "Well-Known Stories", width: geometry.size.width * 0.25, height: geometry.size.width * 0.25)
                    LibraryRowView(title: "Favorites Stories", width: geometry.size.width * 0.25, height: geometry.size.width * 0.25)
                }
            }
            .padding(.leading)
            .navigationTitle("Library")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                    }
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
