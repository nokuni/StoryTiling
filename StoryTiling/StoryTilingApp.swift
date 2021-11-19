//
//  StoryTilingApp.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

@main
struct StoryTilingApp: App {
    var body: some Scene {
        WindowGroup {
            GuidingQuestionsView(tile: .init(name: "Scientist", image: "scientist", category: .incipit, description: """
                An unexperienced detective is set to solve their first case.
                """
                )
            )
        }
    }
}
