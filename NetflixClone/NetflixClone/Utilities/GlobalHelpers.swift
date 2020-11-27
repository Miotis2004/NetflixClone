//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import SwiftUI

let episode1 = Episode(name: "Beginnings and Endings", season: 1, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/301/102", description: "This is the description of the episode.  It is important to share enough information to encourage the user to watch it without giving away any major plot points or revealing the climax.", length: 53, videoURL: exampleVideoURL)
let episode2 = Episode(name: "The Next Chapter", season: 1, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/302/103", description: "This is the description of the episode.  It is important to share enough information to encourage the user to watch it without giving away any major plot points or revealing the climax.", length: 54, videoURL: exampleVideoURL)
let episode3 = Episode(name: "Third Time's the Charm", season: 1, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/303/104", description: "This is the description of the episode.  It is important to share enough information to encourage the user to watch it without giving away any major plot points or revealing the climax.", length: 48, videoURL: exampleVideoURL)
let episode4 = Episode(name: "Beginnings and Endings", season: 2, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/304/105", description: "This is the description of the episode.  It is important to share enough information to encourage the user to watch it without giving away any major plot points or revealing the climax.", length: 53, videoURL: exampleVideoURL)
let episode5 = Episode(name: "The Next Chapter", season: 2, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/305/106", description: "This is the description of the episode.  It is important to share enough information to encourage the user to watch it without giving away any major plot points or revealing the climax.", length: 54, videoURL: exampleVideoURL)
let episode6 = Episode(name: "Third Time's the Charm", season: 2, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/306/107", description: "This is the description of the episode.  It is important to share enough information to encourage the user to watch it without giving away any major plot points or revealing the climax.", length: 48, videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomexampleImageURL: URL{
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let exampleMovie1 = Movie(id: UUID().uuidString, name: "EARTH", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7], episodes: allExampleEpisodes, trailers: exampleTrailers)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "AIR", thumbnailUrl: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [], promotionHeadline: "Top Rated Show", trailers: exampleTrailers)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "FIRE", thumbnailUrl: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 3, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "WATER", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 4, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [], promotionHeadline: "New Episodes Coming Soon", trailers: exampleTrailers)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "LIGHT", thumbnailUrl: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "DARK", thumbnailUrl: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [], promotionHeadline: "Watch Season 6 Now", trailers: exampleTrailers)
let exampleMovie7 = Movie(id: UUID().uuidString, name: "DARK", thumbnailUrl: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Money Dudes", cast: "actor 1, actress 1, actor 2", moreLikeThisMovies: [], promotionHeadline: "Watch Season 6 Now", trailers: exampleTrailers)

var exampleMovies: [Movie]  {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Pilot", description: "The first episode of a brand new seris.  A character attempts to become relatable to the audience as the story is started.", season: 1, episode: 1)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
