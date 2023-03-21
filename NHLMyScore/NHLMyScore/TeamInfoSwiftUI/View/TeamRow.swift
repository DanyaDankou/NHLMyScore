//
//  TeamRow.swift
//  NHLMyScore
//
//  Created by comp on 22.03.23.
//

import SwiftUI
import SVGView

struct TeamRow: View {
    
    var team: Team
    
    var body: some View {
        HStack {
            SVGView(contentsOf: getLogoURL(for: team.id)!)
                .frame(width: 50, height: 50)
            Text(team.name)
        }
    }
}

//struct TeamRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TeamRow(team: TeamViewModel.get)
//}
//}
