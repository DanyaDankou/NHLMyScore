//
//  NetworkService.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Alamofire
import Combine
import Foundation

// class NetworkingManager: ObservableObject {
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
// }

class NetworkService {
    // MARK: Lifecycle

    private init() {}

    // MARK: Internal

    static let shared = NetworkService()

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

                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

class PlayerService {
    func get(id: Int) -> AnyPublisher<Player, AFError> {
        let url = "https://statsapi.web.nhl.com/api/v1/teams/\(id)/roster"

        let publisher = AF.request(url).publishDecodable(type: Player.self)
        return publisher.value()
    }
}
