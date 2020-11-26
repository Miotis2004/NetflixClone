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
                        
                        WhiteButton(text: "Play", imageName: "play.fill", backgroundColor: .red ) {
                            
                        }
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        ButtonBar()
                       
//                        CustomTabSwitcher(tabs: <#T##[CustomTab]#>)
                    }//: VSTACK
                    .padding()
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

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                    .foregroundColor(.gray)
                    .font(.caption)
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                    .foregroundColor(.gray)
                    .font(.caption)
                Spacer()
            }
        }
        .padding(.vertical, 4)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            Text(movie.episodeDescriptionDisplay)
                .font(.subheadline)
        }
    }
}

struct ButtonBar: View {
    var body: some View {
        HStack(spacing: 60) {
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                
            }
            
            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                
            }
            
            SmallVerticalButton(text: "Share", isOnImage: "paperplane", isOffImage: "paperplane", isOn: true) {
                
            }
            
            Spacer()
        }
    }
}
