//
//  TeamInfoView.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SwiftUI
import SVGView


struct TeamInfoView: View {
    
    let teamInfo: Team

    var body: some View {
        
        VStack {
            Text(teamInfo.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 10)
            
            VStack {
                SVGView(contentsOf: getLogoURL(for: teamInfo.id)!)
                        .scaledToFit()
                        .padding(.top, 50)
                        .padding(.leading, -150)
                        .frame(width: 200, height: 200)
//                UserImage(url: getLogoURL(for: teamInfo.id)!)
//            AsyncImage(url: URL(getLogoURL(for: teamInfo.id))
            }
        }
    }

    
private func getLogo(from url: URL) -> Image {

    guard let imageData = try? Data(contentsOf: url),
          let image = UIImage(data: imageData) else { return
          Image(systemName: "xmark.shield") }
    let uiImage = Image(uiImage: image)
    return uiImage
}
}


