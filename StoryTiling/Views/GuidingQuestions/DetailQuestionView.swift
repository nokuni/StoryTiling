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
    var name: String
    var description: String
    var image: String
    
    var body: some View {
        VStack {
            /*HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
                .frame(width: 150, height: 150, alignment: .center)
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title2)
                        .bold()
                    Divider()
                    Text(description)
                        .font(.title3)
                }
            }
            .padding()*/
            
            HStack {
                Text(question)
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding()

            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(UIColor.systemGray5))
                .padding()
                .overlay(
                    VStack(alignment: .leading) {
                        HStack() {
                            Text("Write here...")
                                .font(.title)
                                .foregroundColor(.secondary)
                                .padding()
                            Spacer()
                        }
                        Spacer()
                    }
                    .padding()
                )
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailQuestion_Previews: PreviewProvider {
    static var previews: some View{
        DetailQuestionView(question: "Question here", name: "Example", description: "Example", image: "scientist")
    }
}
