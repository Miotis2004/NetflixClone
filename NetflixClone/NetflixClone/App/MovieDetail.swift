//
//  MovieDetail.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button( action: {
                        
                    }, label: {
                        Image(systemName: "clear")
                            .font(.system(size: 35))
                    })
                    .buttonStyle(PlainButtonStyle())
                }//: HSTACK
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubHeadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                    }//: VSTACK
                }//: SCROLLVIEW
                
                Spacer()
            }//: VSTACK
        }//: ZSTACK
        .foregroundColor(.white)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie4)
    }
}

struct MovieInfoSubHeadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
