// Playground - noun: a place where people can play

import UIKit
import QuartzCore

var view = UIView(frame: CGRect(x: 0, y: 0, width: 512, height: 512))

view.backgroundColor = UIColor(red: 35/255, green: 185/255, blue: 240/255, alpha: 1.0)

var cloud = CAShapeLayer()

view.layer.addSublayer(cloud)

var circle = CGPathCreateMutable()

let xOffset = 100
let yOffset = 40

cloud.path = circle
cloud.fillColor = UIColor.whiteColor().CGColor

view

CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset, y: yOffset, width: 100, height: 100))

view

CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset + 60, y: yOffset + 40, width: 100, height: 60))

view

CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset - 50, y: yOffset + 54, width: 100, height: 45))

view

CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset - 20, y: yOffset + 30, width: 50, height: 50))

view
//
CGPathAddEllipseInRect(circle, nil, CGRect(x: xOffset + 100, y: yOffset + 54, width: 100, height: 45))


view
