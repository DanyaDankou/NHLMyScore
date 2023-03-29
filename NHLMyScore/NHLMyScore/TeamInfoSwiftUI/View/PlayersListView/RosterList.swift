//
//  RosterList.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct RosterList: View {
    
    var teamID: Int
    @StateObject var playersViewModel = PlayersViewModel()

    
    var body: some View {
        NavigationView {
            List(playersViewModel.roster) { player in
                NavigationLink {
                    PlayerInfoView(player: player)
                } label: {
                    PlayerRow(player: player)
                }
            }
            .navigationBarTitle("Players")
        }
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
