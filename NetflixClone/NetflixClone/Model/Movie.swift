//
//  Movie.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailUrl: URL
    
    var categories: [String]
}
