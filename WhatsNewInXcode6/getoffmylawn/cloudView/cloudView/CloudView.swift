//
//  CloudView.swift
//  cloudView
//
//  Created by Adam Iredale on 16/06/2014.
//  Copyright (c) 2014 Bionic Monocle Pty Ltd. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class CloudView: UIView {

    @IBInspectable
    var xOffset:CGFloat = 100.0 {
    didSet { setNeedsLayout() }
    }
    @IBInspectable
    var yOffset:CGFloat = 40.0 {
    didSet { setNeedsLayout() }
    }
    
    var cloud: CAShapeLayer?
    
    init(frame: CGRect) {
        super.init(frame: frame)
        setupCloudLayer()
    }
    
    init(coder aDecoder: NSCoder!)  {
        super.init(coder: aDecoder)
        setupCloudLayer()
    }

    func setupCloudLayer() {
        backgroundColor = UIColor.clearColor()
        
        if let oldCloud = cloud {
            oldCloud.removeFromSuperlayer()
        }
        
        cloud = CAShapeLayer()
        
        layer.addSublayer(cloud)
        
        var circle = CGPathCreateMutable()
        
        cloud!.path = circle
        cloud!.fillColor = UIColor.whiteColor().CGColor
        
        CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset, y: yOffset, width: 100, height: 100))
        CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset + 60, y: yOffset + 40, width: 100, height: 60))
        CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset - 50, y: yOffset + 54, width: 100, height: 45))
        CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset - 20, y: yOffset + 30, width: 50, height: 50))
        CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset + 100, y: yOffset + 54, width: 100, height: 45))
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupCloudLayer()
    }
    
}
