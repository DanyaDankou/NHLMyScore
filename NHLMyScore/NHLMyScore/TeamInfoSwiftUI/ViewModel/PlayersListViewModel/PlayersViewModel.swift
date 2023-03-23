//
//  PlayersViewModel.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

import Foundation
import Combine
import Alamofire


class PlayersViewModel: ObservableObject {
    
    
    // MARK: Internal
    @Published var players: [Player] = []
    
    private var cancellation: AnyCancellable?
    
    
    // MARK: Lifecycle

    
    init() {
        
        NetworkService.shared.fetchPlayers(teamID: 3) { result in
            switch result {
            case .success(let players):
                self.players = players
            case .failure(let error):
                print(error)
            }
        }
    }
}
