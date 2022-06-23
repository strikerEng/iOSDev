//
//  RoundedButton.swift
//  InspectableApp
//
//  Created by Kire  on 6/23/22.
//

import UIKit

// With @IBDesignable the changes made to objects of this class will be shown in Xcode when its attributes are changed
@IBDesignable class RoundedButton: UIButton {
    
    // - MARK: Properties to appear in the Attributes Inspector
    @IBInspectable var cornerRadius: CGFloat = 0 {
        // When changes are made to any of these variable they are immediately shown in Xcode
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .white {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
