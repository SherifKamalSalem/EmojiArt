//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Sherif Kamal on 10/27/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {

    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
}
