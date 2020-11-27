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
    
    @State private var movieDetailToShow: Movie? = nil
    @State private var topRowSelected: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopRowButtons(topRowSelected: $topRowSelected, homeGenre: $homeGenre)
                    
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -110)
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
                                            .onTapGesture(perform: {
                                                movieDetailToShow = movie
                                            })
                                    }//: LOOP
                                }//: HSTACK
                            }//: SCROLLVIEW
                        }//: VSTACK
                    }//: LOOP
                }//: MAIN VSTACK
            }//: MAIN SCROLLVIEW
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }//: ZSTACK
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    
    @Binding var topRowSelected: HomeTopRow
    @Binding var homeGenre: HomeGenre
    
    var body: some View {
        
        switch topRowSelected {
        case .home:
            HStack {
                Button(action: {
                    topRowSelected = .home
                }) {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                Spacer()
                
                Button(action: {
                    topRowSelected = .tvShows
                }) {
                    Text("TV Shows")
                        .scaledToFit()
                }
                Spacer()
                
                Button(action: {
                    topRowSelected = .movies
                }) {
                    Text("Movies")
                        .scaledToFit()
                }
                Spacer()
                
                Button(action: {
                    topRowSelected = .mylist
                }) {
                    Text("My List")
                        .scaledToFit()
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
        
        case .tvShows:
            HStack {
                Button(action: {
                    topRowSelected = .home
                }) {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                
                HStack(spacing: 20) {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Text(topRowSelected.rawValue)
                                .font(.system(size: 18))
                            Image(systemName: "triangle.fill")
                                .rotationEffect(.degrees(180), anchor: .center)
                                .font(.system(size: 10))
                        }
                        
                    }
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Text("All Genres")
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                .rotationEffect(.degrees(180), anchor: .center)
                                .font(.system(size: 10))
                        }
                            
                    }
                    Spacer()
                }
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
            
        case .movies:
            Text("Movies")
        case .mylist:
            Text("My List")
        }
        
        
    }
}


enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case mylist = " My List"
}

enum HomeGenre {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriller
}
