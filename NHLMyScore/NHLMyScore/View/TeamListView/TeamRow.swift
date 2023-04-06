//
//  TeamRow.swift
//  NHLMyScore
//
//  Created by comp on 22.03.23.
//

import SVGView
import SwiftUI

struct TeamRow: View {
    
    var team: Team

    var body: some View {
        HStack {
//            SVGView(contentsOf: getLogoURL(for: team.id)!)
//                .frame(width: 50, height: 50)
            
            if let url = getLogoURL(for: team.id) {
                            SVGView(contentsOf: url)
                                .frame(width: 50, height: 50)
                        } else {
                            Text("Error loading image")
                        }
            Text(team.name)
        }
    }
}

//struct TeamRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TeamRow(team: Team(id: 3, name: "dsfds", link: "fsdfs", abbreviation: "fsdfs", teamName: "fds", locationName: "fsdfs", firstYearOfPlay: "fsd", shortName: "fdsfs", officialSiteUrl: "sgdgf"))
//    }
//}
