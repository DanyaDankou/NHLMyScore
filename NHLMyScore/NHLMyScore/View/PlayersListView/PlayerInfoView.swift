//
//  PlayerInfoView.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct PlayerInfoView: View {

    @ObservedObject var playerDetailViewModel = PlayersDetailViewModel()
    
    var player: Player

    var body: some View {
        VStack {
            HStack(alignment: .top) {
                ZStack {
                    CachedAsyncImageView(imageURL: getHeadShotURL(for: player.person.id),
                                         imageSize: CGSize(width: 150, height: 150),
                                         cornerRadius: 10,
                                         shadowIsOn: false)
                        .shadow(radius: 20)
                }

                VStack(alignment: .leading) {
                    Text(player.person.fullName)
                        .font(.title)
                    Text(player.jerseyNumber)
                        .font(.system(size: 60)
                            .bold())
                    Divider()
                }
                .padding()
            }
        
            .navigationBarTitle("Player INFO")

            
            VStack(alignment: .leading) {
                Text(player.person.fullName)
                Text(playerDetailViewModel.player?.birthDate ?? "")
                Text(playerDetailViewModel.player?.birthCity ?? "")
                Text(playerDetailViewModel.player?.nationality ?? "")
                if let weight = playerDetailViewModel.player?.weight {
                    Text(String(weight))
                } else {
                    Text("N/A")
                }
                Text(playerDetailViewModel.player?.height ?? "")
                Text(playerDetailViewModel.player?.rosterStatus ?? "")
                Text(playerDetailViewModel.player?.primaryPosition.name ?? "")
            }
            .font(.system(size: 30))

            .onAppear {
                playerDetailViewModel.fetchPlayerDetail(for: player.person.id)
            }
        
            Spacer()
        }
        
        .background(IceImageFon())
    }
}

    
// struct PlayerInfoView_Previews: PreviewProvider {
//    static var previews: some View {
////        PlayerInfoView(player: Player(id: 8474141, person: Person(id: 3, fullName: "Patrick Kane", link: "7489234"), jerseyNumber: "88", position: Position(code: "ds", name: "fdsfs", type: "fds", abbreviation: "dsf")))
//    }
// }
