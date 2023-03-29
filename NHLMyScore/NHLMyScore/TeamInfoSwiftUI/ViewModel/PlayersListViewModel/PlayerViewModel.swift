//
//  PlayerViewModel.swift
//  NHLMyScore
//
//  Created by comp on 23.03.23.
//

//import Foundation
//import Combine
//
//class PlayerViewModel: ObservableObject {
//
//    @Published var player: Player?
//    var cancellation: AnyCancellable?
//    let service = PlayerService()
//    
//
//    func getPlayer(id: Int) {
//        cancellation = service.get(id: id)
//       .mapError({ (error) -> Error in
//           print(error)
//           return error
//       })
//       .sink(receiveCompletion: { _ in },
//             receiveValue: { player in
//               self.player = player
//       })
//   }
//}
