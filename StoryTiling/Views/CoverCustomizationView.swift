//
//  CoverCustomizationView.swift
//  StoryTiling
//
//  Created by Alessandro Colantonio on 17/11/21.
//

import SwiftUI

struct CoverCustomizationView: View {
    
    @State var coverImg = "defaultCover"
    
    var body: some View {
        VStack {
            Text("Customize your Story Tile")
                .font(.title)
                .multilineTextAlignment(.leading)
                .navigationTitle("New Story")
                .navigationBarTitleDisplayMode(.inline)
            Image(coverImg)
            HStack {
                //gallery button
                //illustrations button
                //capture button
            }
            .padding()
            
            //insert text field
            //done button
        }
        .padding()
    }
}

struct CoverCustomizationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoverCustomizationView()
        }
    }
}
