//
//  TeamDetailView.swift
//  NHLMyScore
//
//  Created by comp on 2.04.23.
//

import SwiftUI
import SVGView

struct TeamDetailView: View {
    
    var team: Team
    
    var body: some View {
        VStack {
            ZStack {
                SVGView(contentsOf: getLogoURL(for: team.id)!)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: 20)
            }
            
            VStack(alignment: .leading) {
                Text(team.name)
                    .font(.title)
                Text(team.conference.name)
                Text(team.division.name)
                Text(team.firstYearOfPlay)
                Text(team.officialSiteUrl)
                Text(team.venue.name)

                HStack {
                    Text(team.shortName)
                        .font(.subheadline)
                    Spacer()
                    Text("location: \(team.locationName)")
                        .font(.subheadline)
                }
    }
}
    }
}
