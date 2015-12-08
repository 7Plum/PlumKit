//
//  UIView+PlumKit.swift
//  PlumKit
//
//  Created by Kingiol on 15/12/8.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import Foundation

// MARK: - irregular rounding Corners

private let viewLayerBoundsContext = UnsafeMutablePointer<()>()
private let viewBorderLayerName = "PlumKitViewBorderCornerLayer"

public extension UIView {
    
    /**
     Set UIView roundingCorner and border with and borderColor
     */
    public func roundingCorners(corners: UIRectCorner, cornerRai: CGFloat, borderWidth: CGFloat = 0.0, borderColor: UIColor = UIColor.clearColor()) {
        
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRai, height: cornerRai))
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.CGPath
        layer.mask = maskLayer
        
//        layer.addObserver(self, forKeyPath: "bounds", options: NSKeyValueObservingOptions(rawValue: 0), context: viewLayerBoundsContext)
        
        layer.sublayers?.filter { $0.name == viewBorderLayerName }.forEach { $0.removeFromSuperlayer() }
        
        if borderWidth > 0.0 {
            let borderLayer = CAShapeLayer()
            borderLayer.name = viewBorderLayerName
            borderLayer.frame = bounds
            borderLayer.path = maskPath.CGPath
            borderLayer.lineWidth = borderWidth
            borderLayer.strokeColor = borderColor.CGColor
            borderLayer.fillColor = UIColor.clearColor().CGColor
            layer.addSublayer(borderLayer)
        }
    }
    
    public func mm() {
        roundingCorners([UIRectCorner.BottomLeft, .BottomRight], cornerRai: 10)
    }
    
//    public override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
//        
//        if context == viewLayerBoundsContext && keyPath == "bounds" {
//            print("this should call roundingCorner func")
//        }else {
//            super.observeValueForKeyPath(keyPath, ofObject: object, change: change, context: context)
//        }
//        
//    }
    
}