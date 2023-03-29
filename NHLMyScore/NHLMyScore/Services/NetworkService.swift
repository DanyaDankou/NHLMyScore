//
//  NetworkService.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Foundation
import Alamofire
import Combine

//class NetworkingManager: ObservableObject {
//
//    static let shared = NetworkingManager()
//    private init() {}
//
//    func fetch<T: Decodable>(from url: URL, responseType: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
//        AF.request(url).responseData { response in
//            switch response.result {
//            case .success(let data):
//                do {
//                    let decoder = JSONDecoder()
//                    let result = try decoder.decode(T.self, from: data)
//                    completion(.success(result))
//                } catch let error {
//                    completion(.failure(error))
//                }
//            case .failure(let error):
//                completion(.failure(error))
//            }
//        }
//    }
//}


class NetworkService {

    static let shared = NetworkService()

    private init() {}

    func fetchTeams(completion: @escaping (Result<[Team], Error>) -> Void) {
        guard let url = getTeamsURL() else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
            return
        }
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(TeamsResponse.self, from: data)
                    let teams = result.teams
                    completion(.success(teams))
                    
                } catch let error {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
    }
}
}

//    func fetchPlayers(for teamID: Int, completion: @escaping (Result<[Player], Error>) -> Void) {
//        
//        guard let urlPlayers = getPlayersURL(for: teamID) else {
//            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
//            return
//        }
//        AF.request(urlPlayers).responseData { response in
//            switch response.result {
//            case .success(let data):
//                do {
//                    let decoder = JSONDecoder()
//                    let result = try decoder.decode(Roster.self, from: data)
//                    let players = result.roster
//                    completion(.success(players))
//                } catch let error {
//                    completion(.failure(error))
//                }
//            case .failure(let error):
//                completion(.failure(error))
//            }
//    }
//}
//}


class PlayerService {
    
    func get(id: Int)  -> AnyPublisher<Player, AFError> {
        
        let url = "https://statsapi.web.nhl.com/api/v1/teams/\(id)/roster"
        
           let publisher = AF.request(url).publishDecodable(type: Player.self)
           return publisher.value()
       }
   }


