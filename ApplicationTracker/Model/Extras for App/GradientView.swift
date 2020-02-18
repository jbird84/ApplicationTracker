//
//  GradientView.swift
//  ApplicationTracker
//
//  Created by Kinney Kare on 2/17/20.
//  Copyright © 2020 Kinney Kare. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)  {
        didSet {
            setGradientColors()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1541613041, green: 0.5446594926, blue: 0.8360756578, alpha: 1) {
        didSet {
            setGradientColors()
        }
    }
    
    lazy var gradientLayer: CAGradientLayer = {
        return self.layer as! CAGradientLayer
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setGradientColors()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setGradientColors()
    }
    
    func setGradientColors() {
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
    }
    
}

