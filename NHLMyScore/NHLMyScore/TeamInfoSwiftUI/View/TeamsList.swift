//
//  TeamsList.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SwiftUI
import SVGView

struct TeamsView: View {
    @ObservedObject var viewModel = TeamsViewModel()
  
     var body: some View {
         NavigationView{
             List(viewModel.teams) { team in
                 TeamRow(team: team)
             }
//             HStack {
//
//                 VStack(alignment: .leading) {
//
//                     NavigationLink(destination: TeamRow(id: team.id)) {
//                         Text(team.name)
                     }
                     .navigationBarTitle("Teams", displayMode: .inline)
                }
            }
//        }
//    }
//}

//struct TeamRow: View {
//
//    var id: Int
//
//         @ObservedObject var viewModel = TeamViewModel()
//
//         var body: some View {
//             HStack {
//                 Text(viewModel.team?.name ?? "")
//             }.onAppear {
//                 self.viewModel.getTeam(id: self.id)
//            }
//
//        }
//    }
//}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
