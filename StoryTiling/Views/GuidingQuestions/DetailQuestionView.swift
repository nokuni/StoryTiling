//
//  DetailQuestionView.swift
//  StoryTiling
//
//  Created by Giuseppe Falso on 17/11/21.
//

import Foundation
import SwiftUI

struct DetailQuestionView: View {
    @State var reply: String = "Type here..."
//    @Binding var replies: [String]
    var question: String
    var name: String
    var description: String
    
    init(question: String, name: String, description: String) {
        self.question = question
        self.name = name
        self.description = description
        
        UITextView.appearance().backgroundColor = UIColor.systemGray5
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(question)
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding()

//            RoundedRectangle(cornerRadius: 10)
//                .foregroundColor(Color(UIColor.systemGray5))
//                .padding()
//                .overlay(
//                    VStack(alignment: .leading) {
                        TextEditor(text: $reply)
                            .foregroundColor(.secondary)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .cornerRadius(10)
                            .padding()
                            .onTapGesture {
                                if (reply == "Type here...") {
                                    reply = ""
                                }
                            }
//                        Spacer()
//                    }
//                    .padding()
//                )
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Dismiss"){
                    Text("Saved")
                }
            }
        }
    }
}

struct DetailQuestion_Previews: PreviewProvider {
    static var previews: some View{
        DetailQuestionView(question: "Question here", name: "Example", description: "Example")
    }
}
