//
//  PlayerInfoView.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SVGView
import SwiftUI

struct PlayerInfoView: View {
    @ObservedObject var playerDetailViewModel = PlayersDetailViewModel()

    var player: Player

    var body: some View {
        VStack {
            Divider()
                .padding()
            ZStack {
                CachedAsyncImageView(imageURL: getHeadShotURL(for: player.person.id),
                                     imageSize: CGSize(width: 180, height: 180),
                                     cornerRadius: 90,
                                     shadowIsOn: true)
                    .shadow(radius: 20)
            }

            VStack(alignment: .center) {
                Text("\(player.person.fullName)  |  #\(player.jerseyNumber)")
//                        .font(.system(size: 23)
                    .font(.custom("DIN Condensed", size: 30)
                        .bold())

                let height = playerDetailViewModel.player?.height ?? ""
                let weight = String(playerDetailViewModel.player?.weight ?? 0)
                Text("\(playerDetailViewModel.player?.primaryPosition.abbreviation ?? "")  |  \(height)  |  \(weight) lb  |  Age: \(playerDetailViewModel.player?.currentAge ?? 0)")
                    .font(.system(size: 20))
                    .foregroundColor(.orange.opacity(0.8))

                HStack(alignment: .center) {
                    SVGView(contentsOf: getLogoURL(for: playerDetailViewModel.player?.currentTeam.id ?? 0)!)
                        .frame(width: 35, height: 35)
                    Text(playerDetailViewModel.player?.currentTeam.name ?? "")
                        .font(.title2)
                }
                .padding(.top, -12)
            }
            .padding()

            Divider()
                .frame(height: 10)
                .background(Color.gray)
                .navigationBarTitle(player.person.fullName)

            VStack(alignment: .leading) {
                Text(player.person.fullName)
                    .bold()
                HStack {
                    Text("Born:")
                        .bold()
                    Text(playerDetailViewModel.player?.birthDate ?? "")
                }
                HStack {
                    Text("Birthplace:")
                        .bold()
                    Text("\(playerDetailViewModel.player?.birthCity ?? ""), \(playerDetailViewModel.player?.birthStateProvince ?? "N/A"),  \(playerDetailViewModel.player?.birthCountry ?? "")")
                }
                HStack {
                    Text("Position:")
                        .bold()
                    Text(playerDetailViewModel.player?.primaryPosition.name ?? "")
                }
                HStack {
                    Text("Shoots hand:")
                        .bold()
                    Text(playerDetailViewModel.player?.shootsCatches ?? "")
                }
            }
            .font(.system(size: 20))

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
