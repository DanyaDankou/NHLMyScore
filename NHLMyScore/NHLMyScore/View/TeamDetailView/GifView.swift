//
//  gifView.swift
//  NHLMyScore
//
//  Created by comp on 6.04.23.
//

import SwiftUI
import Gifu

struct GIFView: UIViewRepresentable {
    typealias UIViewType = GIFImageView

    var gifName: String

    func makeUIView(context: Context) -> GIFImageView {
        let gifImageView = GIFImageView()
        gifImageView.animate(withGIFNamed: gifName)
        return gifImageView
    }

    func updateUIView(_ uiView: GIFImageView, context: Context) {}
}
