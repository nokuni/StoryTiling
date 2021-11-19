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
    static let customGray = Color(red: 231 / 255, green: 231 / 255, blue: 231 / 255)
    static let customGreen = Color(red: 159 / 255, green: 227 / 255, blue: 132 / 255)
    static let customBlue = Color(red: 88 / 255, green: 164 / 255, blue: 196 / 255)
    static let customRed = Color(red: 242 / 255, green: 110 / 255, blue: 75 / 255)
    static let customPurple = Color(red: 201 / 255, green: 141 / 255, blue: 192 / 255)
    static let customSystemBlue = Color(red: 59 / 255, green: 113 / 255, blue: 191 / 255)
}

extension Array {
    func separate(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
