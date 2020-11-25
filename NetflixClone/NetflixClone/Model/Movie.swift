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
    
    //MovieDetailView
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episodes: [Episode]?
    
    var promotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
}
