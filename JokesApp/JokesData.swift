//
//  JokesData.swift
//  JokesApp
//
//  Created by YILDIRIM on 12.09.2022.
//

import Foundation
import SwiftUI

//MARK: -Welcom
struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

//MARK: -Value
struct Value: Identifiable,Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
