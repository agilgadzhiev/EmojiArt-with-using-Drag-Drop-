//
//  EmojiArtView.swift
//  EmojIArt
//
//  Created by Агил Гаджиев on 10.04.2022.
//

import UIKit

class EmojiArtView: UIView {

    var backgroundImage: UIImage? {
        didSet {
            setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
}
