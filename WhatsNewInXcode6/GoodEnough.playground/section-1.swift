// Playground - noun: a place where people can play

import Cocoa
import QuartzCore
import XCPlayground

let image = NSImage(named: "gunrange")

let font = NSFont(name: "Helvetica Neue Medium", size: 32)

let attributedString = NSAttributedString(string: "Good enough for me!", attributes: [NSFontAttributeName: font])

let path = NSBezierPath()

path.moveToPoint(NSPoint(x:400, y:0))
path.lineToPoint(NSPoint(x:450, y:50))
path.lineToPoint(NSPoint(x: 450, y: 100))
path.lineToPoint(NSPoint(x: 400, y: 150))
path.lineToPoint(NSPoint(x: 0, y: 150))
path.lineToPoint(NSPoint(x: 0, y: 0))
path.lineToPoint(NSPoint(x: 400, y: 0))
//
path
//
//
let imageSize = NSSize(width: 450, height: 150)

let imageRect = NSRect(origin: CGPointZero, size: imageSize)
//
let shapedImage = NSImage(size: imageSize, flipped: false) {
    (rect: NSRect) in
    
    path.addClip()
    image.drawInRect(imageRect, fromRect:NSZeroRect, operation: .CompositeSourceOver, fraction: 1.0)
    NSGraphicsContext.currentContext().compositingOperation = .CompositeSourceOut
    attributedString.drawInRect(CGRectInset(imageRect,100,38))
    
    return true
}

let view = NSView(frame: NSRect(origin: CGPointZero, size: CGSize(width: 500, height: 500)))
view.wantsLayer = true

let layer = CALayer()
layer.contents = shapedImage
layer.bounds = NSRect(x: 0, y: 0, width: 250, height: 200)
layer.position = NSPoint(x: NSMidX(view.layer.bounds), y: NSMidY(view.layer.bounds))
view.layer.addSublayer(layer)


let animation = CABasicAnimation(keyPath: "transform.rotation.z")
animation.toValue = M_PI * 10.0
animation.duration = 20
animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
layer.addAnimation(animation, forKey: "spin")

XCPShowView("View", view)
//


