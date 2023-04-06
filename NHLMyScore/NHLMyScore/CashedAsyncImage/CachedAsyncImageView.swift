//
//  CashedAsyncImageView.swift
//  NHLMyScore
//
//  Created by comp on 29.03.23.
//

import SwiftUI

struct CachedAsyncImageView: View {
    
    let imageURL: URL?
    let imageSize: CGSize
    let cornerRadius: Double
    let shadowIsOn: Bool
  

    var body: some View {
        
        CachedAsyncImage(url: imageURL, content: { image in
            image.resizable()
        }, placeholder: {
            ProgressView()
        })
        .frame(width: imageSize.width, height: imageSize.height)
        .frame(width: imageSize.width, height: imageSize.height)
        .cornerRadius(cornerRadius)
        .shadow(radius: shadowIsOn ? 10 : 0)
    }
}

struct CachedAsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        CachedAsyncImageView(
            imageURL: URL(string: "https://via.placeholder.com/150/92c952")!,
            imageSize: CGSize(width: 100, height: 100),
            cornerRadius: 10,
            shadowIsOn: true
        )
    }
}
