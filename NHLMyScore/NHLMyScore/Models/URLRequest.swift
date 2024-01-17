//
//  URLRequest.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import Foundation

func getTeamsURL() -> URL? {
    let teamsURLString = APIConstants.baseURL + APIConstants.teamsEndpoint
    return URL(string: teamsURLString)
}

func getScheduleURL(for teamID: Int) -> URL? {
    let scheduleURLString = APIConstants.baseURL + APIConstants.teamsEndpoint + "/\(teamID)" + APIConstants.scheduleEndpoint
    return URL(string: scheduleURLString)
}

func getStandingsURL() -> URL? {
    let standingsURLString = APIConstants.baseURL + APIConstants.standingsEndpoint
    return URL(string: standingsURLString)
}

func getPlayersURL(for teamID: Int) -> URL? {
    let playersURLString = APIConstants.baseURL + APIConstants.teamsEndpoint + "/\(teamID)/" + APIConstants.roster
    return URL(string: playersURLString)
}

func getLogoURL(for teamID: Int) -> URL? {
    let logoURLString = APIConstants.logoURL + "\(teamID)" + APIConstants.logoFormat
    return URL(string: logoURLString)
}


func getStatisticsURL(for playerID: Int) -> URL? {
    let statisticsURLString = APIConstants.baseURL + APIConstants.statisticsEndpoint
    return URL(string: statisticsURLString)
}

func getHeadShotURL(for teamID: Int) -> URL? {
    let logoURLString = APIConstants.headShotURL + "\(teamID)" + APIConstants.headShotFormat
    return URL(string: logoURLString)
}
