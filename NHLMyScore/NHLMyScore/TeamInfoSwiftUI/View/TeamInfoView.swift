//
//  TeamInfoView.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SwiftUI
import SVGView


struct TeamInfoView: View {
    
    // MARK: Internal

    let teamInfo: Team

    var body: some View {
        
        VStack {
                
                IceImageFon()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 200)

                SVGView(contentsOf: getLogoURL(for: teamInfo.id)!)
                .clipShape(Circle())
                .frame(width: 200, height: 200)
                .overlay {
                    Circle().stroke(.white, lineWidth: 0)
                }
                .shadow(radius: 20)
                .offset(y: -250)
                .padding(.bottom, 0)
            

            VStack(alignment: .leading) {
                Text(teamInfo.name)
                    .font(.title)

                HStack {
                    Text(teamInfo.shortName)
                        .font(.subheadline)

                    Spacer()

                    Text("location: \(teamInfo.locationName)")
                        .font(.subheadline)
                }
                Divider()
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .offset(y: -250)
            .padding()
            Spacer()
            
            VStack {
                
            HStack(alignment: .center) {
                Spacer()
                StatsButton()
                Spacer()
                RosterButton()         
                Spacer()
            }
            .offset(y: -270)
            .padding()
                 Spacer()
            }
            Spacer()
        }
    }
}

// MARK: Private

    

    




