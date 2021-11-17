//
//  LibraryRowView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

struct LibraryRowView: View {
    var title: String
    var width, height: CGFloat
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.bold)
                    .font(.title3)
                Color(UIColor.systemGray5)
                    .cornerRadius(10)
                    .frame(width: width, height: height)
                    
            }
        }
    }
}

struct LibraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRowView(title: "title", width: 100, height: 100)
    }
}
