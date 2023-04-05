//
//  ModelRoster.swift
//  NHLMyScore
//
//  Created by comp on 29.03.23.
//

import Foundation

struct RosterFromJson: Codable {
    let roster: [PlayerFromJson]
}

struct Roster: Codable {
    let roster: [Player]
}

struct PlayerFromJson: Codable {
    let person: Person
    let jerseyNumber: String
    let position: Position
}

struct Player: Codable, Identifiable {
    let id: Int
    let person: Person
    let jerseyNumber: String
    let position: Position
}

struct Person: Codable, Identifiable {
    let id: Int
    let fullName: String
    let link: String
}

struct Position: Codable {
    let code: String
    let name: String
    let type: String
    let abbreviation: String
}


//struct PlayerDetail: Codable {
//    let id: Int?
//    let fullName: String?
//    let link: String?
//    let firstName: String?
//    let lastName: String?
//    let primaryNumber: String?
//    let birthDate: String?
//    let birthCity: String?
//    let birthStateProvince: String?
//    let birthCountry: String?
//    let nationality: String?
//    let height: String?
//    let weight: Int?
//    let active: Bool?
//    let alternateCaptain: Bool?
//    let captain: Bool?
//    let rookie: Bool?
//    let shootsCatches: String?
//    let rosterStatus: String?
//    let currentTeam: Team?
//    let primaryPosition: Position?
//}


//struct PlayerResponse: Decodable {
//    let people: [PlayerDetail]
//}
//struct PlayerDetail: Codable, CodingKeys {
//    let id: Int
//    let fullName: String
//    let link: String
//    let firstName: String
//    let lastName: String
//    let primaryNumber: String
//    let birthDate: String
//    let currentAge: Int
//    let birthCity: String
//    let birthStateProvince: String
//    let birthCountry: String
//    let nationality: String
//    let height: String
//    let weight: Int
//    let active: Bool
//    let alternateCaptain: Bool
//    let captain: Bool
//    let rookie: Bool
//    let shootsCatches: String
//    let rosterStatus: String
//    let currentTeam: Team
//    let primaryPosition: Position
//}
  

//struct PlayerDetail: Codable {
//    
//    let id: Int?
//    let fullName: String?
//    let link: String?
//    let firstName: String?
//    let lastName: String?
//    let primaryNumber: String?
//    let birthDate: String?
//    let birthCity: String?
//    let birthStateProvince: String?
//    let birthCountry: String?
//    let nationality: String?
//    let height: String?
//    let weight: Int?
//    let active: Bool?
//    let alternateCaptain: Bool?
//    let captain: Bool?
//    let rookie: Bool?
//    let shootsCatches: String?
//    let rosterStatus: String?
//    let currentTeam: Team?
//    let primaryPosition: Position?
//    
//    enum CodingKeys: String, CodingKey {
//        case id
//        case fullName
//        case link
//        case firstName
//        case lastName
//        case primaryNumber
//        case birthDate
//        case birthCity
//        case birthStateProvince
//        case birthCountry
//        case nationality
//        case height
//        case weight
//        case active
//        case alternateCaptain
//        case captain
//        case rookie
//        case shootsCatches
//        case rosterStatus
//        case currentTeam
//        case primaryPosition
//    }
//}

struct PlayerResponse: Decodable {
    let people: [PlayerDetail]
}

struct PlayerDetail: Decodable, Identifiable {
    let id: Int64
    let fullName: String
    let link: String
    let firstName: String
    let lastName: String
    let primaryNumber: String
    let birthDate: String
    let currentAge: Int?
    let birthCity: String
    let birthStateProvince: String?
    let birthCountry: String
    let nationality: String
    let height: String
    let weight: Int64
    let active: Bool
    let alternateCaptain: Bool?
    let captain: Bool?
    let rookie: Bool
    let shootsCatches: String
    let rosterStatus: String
    let currentTeam: CurrentTeam
    let primaryPosition: PrimaryPosition
    
    enum CodingKeys: String, CodingKey {
        case id, fullName, link, firstName, lastName, primaryNumber, birthDate, currentAge, birthCity, birthStateProvince, birthCountry, nationality, height, weight, active, alternateCaptain, captain, rookie, shootsCatches, rosterStatus, currentTeam, primaryPosition
    }
}

struct CurrentTeam: Decodable {
    let id: Int
    let name: String
    let link: String
}

struct PrimaryPosition: Decodable {
    let code: String
    let name: String
    let type: String
    let abbreviation: String
}
