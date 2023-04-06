//
//  TeamDetailView.swift
//  NHLMyScore
//
//  Created by comp on 2.04.23.
//
import SVGView
import SwiftUI
import UIKit

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
                    .foregroundColor(.orange.opacity(0.8))
                HStack {
                    Text("Conference:")
                        .foregroundColor(.orange.opacity(0.8))
                    Text(team.conference.name)
                }
                HStack {
                    Text("Division:")
                        .foregroundColor(.orange.opacity(0.8))
                    Text(team.division.name)
                }
                HStack {
                    Text("Stadium:")
                        .foregroundColor(.orange.opacity(0.8))
                    Text(team.venue.name)
                }
                HStack {
                    Text("First year in NHL:")
                        .foregroundColor(.orange.opacity(0.8))
                    Text(team.firstYearOfPlay)
                }
            }
            .font(.custom("DIN Condensed", size: 30))
            .navigationBarTitle(team.name)
            Spacer()
          
                .padding()
            Divider()
            
            HStack {
                let urlSite = URL(string: team.officialSiteUrl)
                Image("goSite")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .opacity(0.8)
                    //                    .foregroundColor(.blue)
                    .onTapGesture {
                        UIApplication.shared.open(urlSite!)
                    }
            }
            Divider()
            
            HStack {
                Text(team.shortName)
                Spacer()
                Text("location: \(team.locationName)")
            }
            .font(.custom("DIN Condensed", size: 25))
        }
        
        .background(IceImageFon())
    }
}
