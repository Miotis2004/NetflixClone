//
//  Trailer.swift
//  NetflixClone
//
//  Created by Field Employee on 11/26/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id:String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
