//
//  DetailQuestionView.swift
//  StoryTiling
//
//  Created by Giuseppe Falso on 17/11/21.
//

import Foundation
import SwiftUI

struct DetailQuestionView: View {
    var question: String
    var image: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                Image(systemName: image)
                    .foregroundColor(.yellow)
                    .font(.title)
                    .padding()
            }
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(UIColor.systemGray5))
                .padding()
                .overlay(
                    VStack {
                        HStack {
                            Text(question)
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.leading)
                            .padding()
                            Spacer()
                        }
                        Spacer()
                    }
                        .padding()
                )
        }
        .navigationBarTitle("Question", displayMode: .inline)
    }
}

struct DetailQuestion_Previews: PreviewProvider {
    static var previews: some View{
        DetailQuestionView(question: "Question here", image: "lightbulb.fill")
    }
}
