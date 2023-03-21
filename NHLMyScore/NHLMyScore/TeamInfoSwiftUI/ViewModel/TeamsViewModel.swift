//
//  TeamsViewModel.swift
//  NHLMyScore
//
//  Created by comp on 21.03.23.
//

import Combine
import Foundation

class TeamsViewModel: ObservableObject {
    
    // MARK: Internal

    @Published var teams: [Team] = []
    var cancellation: AnyCancellable?
    
    
    // MARK: Lifecycle

    init() {
        NetworkService.shared.fetchTeams { result in
            switch result {
            case .success(let teams):
                self.teams = teams
            case .failure(let error):
                print(error)
            }
        }
    }
}
