//
//  PlayersInfoViewModel.swift
//  NHLMyScore
//
//  Created by comp on 2.04.23.
//

import Foundation
import Combine

   
class PlayersDetailViewModel: ObservableObject {
    @Published var player: PlayerDetail?
    @Published var isLoading = false
    
    func fetchPlayerDetail(for playerID: Int) {
        isLoading = true
        
        let urlString = "https://statsapi.web.nhl.com/api/v1/people/\(playerID)"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let data = data {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                do {
                    let playerDetailResponse = try decoder.decode(PlayerResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.player = playerDetailResponse.people.first
                        self.isLoading = false
                    }
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
