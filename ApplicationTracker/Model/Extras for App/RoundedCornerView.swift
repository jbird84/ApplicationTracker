//
//  RoundedCornerView.swift
//  ApplicationTracker
//
//  Created by Kinney Kare on 2/17/20.
//  Copyright © 2020 Kinney Kare. All rights reserved.
//

import UIKit

class RoundedCornerView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet{
            layer.borderColor = borderColor?.cgColor
        }
    }

}
