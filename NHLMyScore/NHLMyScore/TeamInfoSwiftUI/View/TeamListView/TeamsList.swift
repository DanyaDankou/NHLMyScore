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
         .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
         )
         .edgesIgnoringSafeArea(.all)
                }
            }



struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
