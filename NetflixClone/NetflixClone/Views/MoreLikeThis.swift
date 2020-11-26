//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by Field Employee on 11/26/20.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<movies.count) { index in
                    StandardHomeMovie(movie: movies[index])
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            MoreLikeThis(movies: exampleMovies)
                
        }
        .foregroundColor(.white)
        .previewLayout(.sizeThatFits)
        
    }
}