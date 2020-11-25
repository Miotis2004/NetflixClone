//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "EARTH", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "AIR", thumbnailUrl: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "FIRE", thumbnailUrl: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "WATER", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "LIGHT", thumbnailUrl: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "DARK", thumbnailUrl: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
