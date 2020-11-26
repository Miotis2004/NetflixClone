//
//  VideoPreviewImage.swift
//  NetflixClone
//
//  Created by Field Employee on 11/26/20.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    
    @State private var showingVideoPlayer = false
    
    var imageURL: URL
    var videoURL: URL
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
    }
}
