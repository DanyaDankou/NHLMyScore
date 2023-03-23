//
//  RosterRow.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import SwiftUI

struct PlayerRow: View {

    @ObservedObject var viewModelPlayer = PlayerViewModel()
    var player: Player
    
    var body: some View {
        HStack{
            Text(player.fullName)
        }
        
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: Player(id: 2, fullName: "Patrick Kane", firstName: "dan"))
    }
}
