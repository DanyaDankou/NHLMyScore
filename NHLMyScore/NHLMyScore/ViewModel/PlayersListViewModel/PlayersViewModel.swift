//
//  PlayersViewModel.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import Alamofire
import Combine
import Foundation

class PlayersViewModel: ObservableObject {
    @Published var roster: [Player] = []

    func fetchRoster(for teamID: Int) {
        
        let url = "https://statsapi.web.nhl.com/api/v1/teams/\(teamID)/roster"

        AF.request(url).responseDecodable(of: RosterFromJson.self) { response in
//            print(response)
            switch response.result {
            case .success(let rosterFromJson):
                var roster: [Player] = []
                var id = 0
                rosterFromJson.roster.forEach { player in
                    roster.append(Player(id: id, person: player.person, jerseyNumber: player.jerseyNumber, position: player.position))
                    id += 1
                }
                self.roster = roster
            case .failure(let error):
                print(error.localizedDescription)
                debugPrint(error)
            }
        }
    }
}
