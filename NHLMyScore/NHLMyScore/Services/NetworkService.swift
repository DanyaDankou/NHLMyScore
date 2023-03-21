//
//  NetworkService.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Foundation
import Alamofire
import Combine

class NetworkingManager: ObservableObject {
    
    static let shared = NetworkingManager()
    private init() {}

    func fetch<T: Decodable>(from url: URL, responseType: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(T.self, from: data)
                    completion(.success(result))
                } catch let error {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

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
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//            guard let data = data else {
//                completion(.failure(NSError(domain: "No data", code: 0, userInfo: nil)))
//                return
//            }
//            do {
//                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
//                let teamResponse = try decoder.decode(TeamsResponse.self, from: data)
//                let teams = teamResponse.teams
//                completion(.success(teams))
//            } catch {
//                completion(.failure(error))
//            }
//        }.resume()
    }
}
}


class TeamService {
    
    func get(id: Int)  -> AnyPublisher<Team, AFError> {
        
        let url = "https://statsapi.web.nhl.com/api/v1/teams/\(id)"
        
           let publisher = AF.request(url).publishDecodable(type: Team.self)
           return publisher.value()
       }
   }
