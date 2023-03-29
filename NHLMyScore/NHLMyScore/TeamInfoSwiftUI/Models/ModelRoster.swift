//
//  ModelRoster.swift
//  NHLMyScore
//
//  Created by comp on 29.03.23.
//

import Foundation

struct RosterFromJson: Codable{
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
