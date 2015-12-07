//
//  CALayer+PlumKit.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/7.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import Foundation
import QuartzCore

// MARK: - XIB Configuration - User Defined Runtime Attributes

public extension CALayer {
    
    /**
     In Xcode User Defined RuntimeAttributes
     Set Key Path -> layer.borderUIColor
     Then you can set layer's borderColor
     */
    public var borderUIColor: UIColor? {
        set {
            borderColor = borderUIColor?.CGColor
        }
        
        get {
            guard let unWrapBorderColor = borderColor else { return nil }
            return UIColor(CGColor: unWrapBorderColor)
        }
    }
    
}