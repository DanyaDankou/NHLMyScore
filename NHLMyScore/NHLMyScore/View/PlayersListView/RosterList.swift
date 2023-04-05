//
//  RosterList.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct RosterList: View {
    
    var teamID: Int
    @ObservedObject var playersViewModel = PlayersViewModel()

    var body: some View {
            List(playersViewModel.roster) { player in
                NavigationLink {
                    PlayerInfoView(playerDetailViewModel: PlayersDetailViewModel(), player: player)
                } label: {
                    PlayerRow(player: player)
                }
            }
            .navigationBarTitle("Roster")
        .onAppear {
            playersViewModel.fetchRoster(for: teamID)
        }
    }
}

struct RosterList_Previews: PreviewProvider {
    static var previews: some View {
        RosterList(teamID: 4)
    }
}
