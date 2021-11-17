//
//  Extensions.swift
//  StoryTiling
//
//  Created by Maertens Yann-Christophe on 17/11/21.
//

import SwiftUI

extension Bundle {
    func decode<T: Decodable>(_ resource: String) -> [T] {
        if let url = url(forResource: resource, withExtension: "json"),
           let data = try? Data(contentsOf: url),
           let decodedData = try? JSONDecoder().decode([T].self, from: data) {
            return decodedData
        }
        return []
    }
}

extension Color {
    static let veryLightBlue = Color(red: 235/255, green: 243/255, blue: 250/255)
}
