//
//  GuidingQuestionsView.swift
//  StoryTiling
//
//  Created by Giuseppe Falso on 17/11/21.
//

import Foundation
import SwiftUI

struct GuidingQuestionsView: View {
    var tile: Tile
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                    Image(systemName: tile.image)
                        .foregroundColor(.yellow)
                        .font(.title)
                        .padding()
                }
                List {
                    ForEach(tile.questions, id: \.self) {question in
                        NavigationLink(destination:DetailQuestionView(question: question, image: tile.image)) {
                            Text(question)
                                .font(.title)
                                .bold()
                                .padding()
                        }
                    }
                }
            }
            .navigationTitle("Guiding questions")
        }
    }
}

struct GuidingQuestions_Previews: PreviewProvider {
    static var previews: some View {
        GuidingQuestionsView(tile: .init(name: "Scientist", image: "lightbulb.fill", category: .incipit, description: "Test", questions: ["Which are the character’s main motivations?","What is the ordinary world, before the adventure begins?", "Are there any allies and/or a mentor?"]))
    }
}
