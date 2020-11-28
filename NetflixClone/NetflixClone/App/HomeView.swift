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
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopRowButtons(topRowSelected: $topRowSelected, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopRowSelection: $showTopRowSelection)
                    
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    HomeStack(vm: vm, topRowSelection: topRowSelected, movieDetailToShow: $movieDetailToShow)//: LOOP
                }//: MAIN VSTACK
            }//: MAIN SCROLLVIEW
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
            
            if showTopRowSelection {
                Group {
                    Color.black
                        .opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id:\.self) { topRow in
                            
                            Button(action: {
                                topRowSelected = topRow
                                showTopRowSelection = false
                            }, label: {
                                if topRow == topRowSelected {
                                    Text("\(topRow.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(topRow.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            })
                            
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            showTopRowSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        })
                        .padding(30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
            }
            
            if showGenreSelection {
                Group {
                    Color.black
                        .opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ScrollView {
                            ForEach(vm.allGrnres, id:\.self) { genre in
                                
                                Button(action: {
                                    homeGenre = genre
                                    showGenreSelection = false
                                }, label: {
                                    if genre == homeGenre {
                                        Text("\(genre.rawValue)")
                                            .bold()
                                    } else {
                                        Text("\(genre.rawValue)")
                                            .foregroundColor(.gray)
                                    }
                                })
                                .padding(.bottom, 40)
                                
                            }
                        }
                        
                        
                        Spacer()
                        
                        Button(action: {
                            showGenreSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        })
                        .padding(30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
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



enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case mylist = " My List"
}

enum HomeGenre: String {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriller
}

