//
//  HomeVM.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import Foundation

class HomeVM: ObservableObject {
    
    //String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }
    
    public var allGrnres: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre)})
        case .tvShows:
            return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre)})
        case .mylist:
            return movies[cat] ?? []
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Release"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi"] = exampleMovies.shuffled()
    }
    
}
