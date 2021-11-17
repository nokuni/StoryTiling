//
//  CoverCustomizationView.swift
//  StoryTiling
//
//  Created by Alessandro Colantonio on 17/11/21.
//

import SwiftUI

struct CoverCustomizationView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationTitle("New Story")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar() {
                ToolbarItem(placement: .navigationBarLeading)
                {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    })
                }
            }
    }
}

struct CoverCustomizationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoverCustomizationView()
        }
    }
}
