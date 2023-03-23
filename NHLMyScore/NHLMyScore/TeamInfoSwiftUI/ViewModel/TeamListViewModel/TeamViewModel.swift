//
//  TeamViewModel.swift
//  NHLMyScore
//
//  Created by comp on 21.03.23.
//

//import Foundation
//import Combine
//
//class TeamViewModel: ObservableObject {
//
//    @Published var team: Team?
//    var cancellation: AnyCancellable?
//    let service = PlayerService()
//    
//
//    func getTeam(id: Int) {
//        cancellation = service.get(id: id)
//       .mapError({ (error) -> Error in
//           print(error)
//           return error
//       })
//       .sink(receiveCompletion: { _ in },
//             receiveValue: { player in
//               self.team = team
//       })
//   }
//}
