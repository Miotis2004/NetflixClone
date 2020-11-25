//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailUrl)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { item in
                        HStack {
                            Text(item)
                                .font(.footnote)
                            if !isCategoryLast(item) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }//: IF
                        }//: HSTACK
                    }//: LOOP
                }//: CATEGORY HSTACK
                .padding()
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //Complete action later
                    }
                    
                    Spacer()
                    
                    WhiteButton(text: "Play", imageName: "play.fill") {
                        //Actions
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //Show details
                    }
                    
                    Spacer()
                }//: HSTACK
                .padding()
            }//: MAIN VSTACK
            .background(LinearGradient.blackOpacityGradient)
                            .padding(.top, 250)
            
        }//: ZSTACK
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
