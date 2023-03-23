//
//  RosterList.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct RosterList: View {
        
    
    @ObservedObject var viewModelPlayers = PlayersViewModel()
    
    
    var body: some View {
        
        NavigationView {
            List(viewModelPlayers.players) { player in
                NavigationLink {
                    PlayerInfoView()
                } label: {
                    PlayerRow(player: player)
                }
            }
            .navigationBarTitle("Roster", displayMode: .inline)
                    }
        .background(
           Image("background")
               .resizable()
               .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
               }
           }



struct RosterView_Previews: PreviewProvider {
    static var previews: some View {
        RosterList()
    }
}
