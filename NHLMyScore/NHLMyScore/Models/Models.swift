//
//  Models.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Foundation

struct Team: Codable, Identifiable {
    let id: Int
    let name: String
    let link: String
//    let venue: Venue
    let abbreviation: String
    let teamName: String
    let locationName: String
    let firstYearOfPlay: String
//    let division: Division
//    let conference: Conference
//    let franchise: Franchise
    let shortName: String
    let officialSiteUrl: String
//    let franchiseId: Int
//    let active: Bool
//    let roster: PlayersResponse
}

struct Venue: Codable {
    let name: String
    let link: String
    let city: String
    let timeZone: TimeZone
}

struct TimeZone: Codable {
    let id: String
    let offset: Int
    let tz: String
}

struct Division: Codable {
    let id: Int
    let name: String
    let nameShort: String
    let link: String
    let abbreviation: String
}

struct Conference: Codable {
    let id: Int
    let name: String
    let link: String
}

struct Franchise: Codable {
    let franchiseId: Int
    let teamName: String
    let link: String
}

struct TeamsResponse: Codable {
    let teams: [Team]
}

struct TeamInfoResponse: Codable {
    let id: Int
    let name: String
    let abbreviation: String
}
