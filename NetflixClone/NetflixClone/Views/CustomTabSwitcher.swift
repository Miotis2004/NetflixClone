//
//  CustomTabSwitcher.swift
//  NetflixClone
//
//  Created by Field Employee on 11/26/20.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    var movie: Movie
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(tabs, id: \.self) { tab in
                    VStack {
                        Rectangle()
                            .frame(width: widthForTab(tab), height: 6)
                            .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                        
                        Button(action: {
                            currentTab = tab
                        }, label: {
                            Text(tab.rawValue)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                        })
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: widthForTab(tab), height: 30)
                    }
                }
            }
            
            switch currentTab {
                case .episodes: Text("EPISODES")
                case .trailers:
                    TrailerList(trailers: movie.trailers)
                case .more:
                    MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMovie1)
                
        }
        .foregroundColor(.white)
        .previewLayout(.sizeThatFits)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

