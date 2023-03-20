//
//  NetworkService.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Foundation
import Alamofire

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
