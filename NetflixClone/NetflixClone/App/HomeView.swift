//
//  HomeView.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import SwiftUI

struct HomeView: View {
    
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    HStack {
                        Button(action: {
                            
                        }) {
                            Image("netflix_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        }
                        Spacer()
                        Text("TV Shows")
                        Spacer()
                        Text("Movies")
                        Spacer()
                        Text("My List")
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 30)
                    
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -100)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)){ movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }//: LOOP
                                }//: HSTACK
                            }//: SCROLLVIEW
                        }//: VSTACK
                    }//: LOOP
                }//: MAIN VSTACK
            }//: MAIN SCROLLVIEW
        }//: ZSTACK
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
