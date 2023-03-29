//
//  RosterRow.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player

//    @ObservedObject var viewModelPlayer = PlayerViewModel()
    
    var body: some View {
        HStack {
           
            CachedAsyncImageView(imageURL: getHeadShotURL(for: player.person.id),
                                 imageSize: CGSize(width: 70, height: 70))
            
            Text(player.person.fullName)
            Text(player.jerseyNumber)
    }
}
}

//struct PlayerRow_Previews: PreviewProvider {
//    static var previews: some View {
//        PlayerRow(player: Player(id: , person: Person(id: 3, fullName: "Patrick Kane", link: "7489234"), jerseyNumber: "88", position: Position(code: "ds", name: "fdsfs", type: "fds", abbreviation: "dsf")))    }
//}

