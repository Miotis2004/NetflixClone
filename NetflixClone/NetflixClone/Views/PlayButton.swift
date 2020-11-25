//
//  PlayButton.swift
//  NetflixClone
//
//  Created by Field Employee on 11/25/20.
//

import SwiftUI

struct PlayButton: View {
    var body: some View {
        
        Button(action: {}, label: {
            HStack {
                Image(systemName: "play")
                Text("Play")
            }
            .background(Color.white)
            .foregroundColor(.black)
        })
        .padding(.horizontal, 12)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
