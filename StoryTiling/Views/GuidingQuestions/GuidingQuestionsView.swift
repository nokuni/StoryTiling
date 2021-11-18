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
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.green)
                        Image(tile.image)
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .frame(width: 150, height: 150, alignment: .leading)
                    
                    VStack(alignment: .leading) {
                        Text(tile.name)
                            .font(.title2)
                            .bold()
                        Divider()
                        Text(tile.description)
                            .font(.title3)
                    }
                }
                .padding()
                
                List(tile.category.questions, id: \.self) {question in
                    NavigationLink(destination: DetailQuestionView(question: question, name: tile.name, description: tile.description, image: tile.image)) {
                        Text(question)
                            .font(.title)
                            .padding()
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarTitle("\(tile.category.rawValue.capitalized)")
        }
    }
}

struct GuidingQuestions_Previews: PreviewProvider {
    static var previews: some View {
        GuidingQuestionsView(tile: .init(name: "Scientist", image: "scientist", category: .incipit, description: """
            An unexperienced detective is set to solve their first case.
            """
            )
        )
    }
}
