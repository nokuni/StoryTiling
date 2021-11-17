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
                    Text("My Stories")
                        .fontWeight(.semibold)
                        .font(.title3)
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
                    Text("Favorites Stories")
                        .fontWeight(.semibold)
                        .font(.title3)
                    Image("favorite")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 5)
                    Text("Well-Known Stories")
                        .fontWeight(.semibold)
                        .font(.title3)
                    ScrollView(.horizontal) {
                        HStack {
                            Color.gray.cornerRadius(10)
                                .frame(width: geometry.size.width * 0.4)
                            Color.gray.cornerRadius(10)
                                .frame(width: geometry.size.width * 0.4)
                        }
                    }
                }
            }
            .padding()
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
