//
//  NewStoryButtonView.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

// The view of the "plus" button to create new story
struct NewStoryButtonView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.title)
        }
    }
}

struct NewStoryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewStoryButtonView()
    }
}
