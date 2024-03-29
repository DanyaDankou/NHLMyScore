//
//  ApiConst.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Foundation

struct APIConstants {
    
    static let baseURL = "https://statsapi.web.nhl.com/api/v1/"
    static let teamsEndpoint = "teams"
    static let scheduleEndpoint = "schedule"
    static let standingsEndpoint = "standings"
    static let playersEndpoint = "players"
    static let statisticsEndpoint = "statistics"
    static let teamsID = "{teamId}"
    static let roster = "roster"
    static let logoURL = "https://www-league.nhlstatic.com/images/logos/teams-current-primary-light/"
    static let logoFormat = ".svg"
    static let headShotURL = "https://cms.nhl.bamgrid.com/images/headshots/current/168x168/"
    static let headShotFormat = ".jpg"

}
