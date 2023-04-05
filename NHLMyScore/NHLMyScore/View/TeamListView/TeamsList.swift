//
//  TeamsList.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SVGView
import SwiftUI

struct TeamsView: View {
    @ObservedObject var viewModel = TeamsViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.teams) { team in
                NavigationLink {
                    TeamInfoView(team: team)
                } label: {
                    TeamRow(team: team)
                }
            }
            .navigationBarTitle("Teams", displayMode: .inline)
        }
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
