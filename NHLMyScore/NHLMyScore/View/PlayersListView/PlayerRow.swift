//
//  RosterRow.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player

    var body: some View {
        HStack {
            CachedAsyncImageView(imageURL: getHeadShotURL(for: player.person.id),
                                 imageSize: CGSize(width: 70, height: 70),
                                 cornerRadius: 10,
                                 shadowIsOn: false)

            VStack(alignment: .leading) {
                HStack {
                    Text(player.person.fullName)
                        .font(.title)
                    Spacer()
//            Text(player.jerseyNumber)
                    StrokeText(text: player.jerseyNumber, width: 0.1, color: .black)
                        .font(.custom("Baskerville", size: 30).bold())

                        .padding(.trailing)
                }
                Text(player.position.name)
                    .font(.subheadline)
            }
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: Player(id: 8474141, person: Person(id: 3, fullName: "Patrick Kane", link: "7489234"), jerseyNumber: "88", position: Position(code: "ds", name: "fdsfs", type: "fds", abbreviation: "dsf")))
    }
}
