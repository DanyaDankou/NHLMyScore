//
//  IceImageFon.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SwiftUI

struct IceImageFon: View {
    var body: some View {
        Image("icefon")
            .resizable()
            .scaledToFill()

    }
}

struct IceImageFon_Previews: PreviewProvider {
    static var previews: some View {
        IceImageFon()
    }
}
