//
//  DetailQuestionView.swift
//  StoryTiling
//
//  Created by Giuseppe Falso on 17/11/21.
//

import Foundation
import SwiftUI
import UIKit

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct DetailQuestionView: View {
//    @Binding private var replies: [String]
    @State private var reply: String
    @State private var tapped: Bool = false
    @State private var textColor: Color = Color.secondary
    let placeholder = "Type here..."
    var question: String
    var name: String
    var description: String
    
    init(question: String, name: String, description: String) {
        self.question = question
        self.name = name
        self.description = description
        self.reply = placeholder
        
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
            .onTapGesture {
                tapped.toggle()
                hideKeyboard()
                if (reply.isEmpty) {
                    reply = placeholder
                    textColor = Color.secondary
                }
            }
            TextEditor(text: $reply)
                .foregroundColor(textColor)
                .font(.title)
                .multilineTextAlignment(.leading)
                .cornerRadius(10)
                .padding()
                .onTapGesture {
                    if (!tapped) {
                        tapped.toggle()
                        if (reply == "Type here...") {
                            reply = ""
                            textColor = Color.primary
                        }
                    }
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                if (tapped) {
                    Button("Done") {
                        tapped.toggle()
                        hideKeyboard()
                        if (reply.isEmpty) {
                            textColor = Color.secondary
                            reply = placeholder
                        }
                    }
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
