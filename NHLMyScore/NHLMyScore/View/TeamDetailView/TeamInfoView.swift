//
//  TeamInfoView.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SVGView
import SwiftUI

struct TeamInfoView: View {
    
    let team: Team

    var body: some View {
        VStack {
            ZStack {
                SVGView(contentsOf: getLogoURL(for: team.id)!)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }

            VStack(alignment: .leading) {
                Text(team.name)
                    .font(.title)

                HStack {
                    Text(team.shortName)
                        .font(.subheadline)
                    Spacer()
                    Text("location: \(team.locationName)")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
            }

            .padding()
//            .padding()
            Spacer()

            HStack(alignment: .center) {
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        NavigationLink(destination: RosterList(teamID: team.id)) {
                            RosterRow()
                        }
                        .accentColor(.white)
                        NavigationLink(destination: TeamDetailView(team: team)) {
                            InfoRow()
                        }
                        .accentColor(.white)
                    }
                }
            }
            .padding()
            Spacer()
                .navigationTitle(team.abbreviation)
                .navigationBarTitleDisplayMode(.automatic)
        }
        .background(IceImageFon())
    }
}

//struct TeamInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        TeamInfoView(team: Team(id: 3, name: "dsfds", link: "fsdfs", abbreviation: "fsdfs", teamName: "fds", locationName: "fsdfs", firstYearOfPlay: "fsd", shortName: "fdsfs", officialSiteUrl: "sgdgf"))
//    }
//}
