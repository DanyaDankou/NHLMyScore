//
//  StatsButton.swift
//  NHLMyScore
//
//  Created by comp on 20.03.23.
//

import SwiftUI

struct StatsButton: View {
    var body: some View {
        Button (action: {
            print("fsfs") }) {
                HStack (spacing: 5) {
                 Image(systemName: "flame.fill")
                 Text("СОСТАВ")
            }
            }
            .frame(width: 100, height: 15)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1))
    }
}

struct StatsButton_Previews: PreviewProvider {
    static var previews: some View {
        StatsButton()
    }
}
