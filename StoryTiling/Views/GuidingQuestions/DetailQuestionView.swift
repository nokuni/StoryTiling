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
        NavigationView {
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
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .padding()
                    
                    VStack {
                        Text(question)
                            .font(.title2)
                            .bold()
                            .padding()
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Question", displayMode: .inline)
        }
    }
}

struct DetailQuestion_Previews: PreviewProvider {
    static var previews: some View{
        DetailQuestionView(question: "Question here", image: "lightbulb.fill")
    }
}
