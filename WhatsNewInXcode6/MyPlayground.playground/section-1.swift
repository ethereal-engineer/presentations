// Playground - noun: a place where people can play

import Cocoa
import QuartzCore
import XCPlayground

// Simple Automatic


for i in -10...10 {
    i * i * i
    i * i * -1
}

// Manual + Array Trick

var array = UInt32[]()

for i in 0..20 {
    array += arc4random() % 100
}

//var array = [23, 13, 49, 79, 41, 56, 1, 62, 72, 81, 82, 81, 57, 57, 38, 19, 99, 72, 12, 20]
//
//func modFive(someInt:Int) -> Int {
//    return someInt % 5
//}
//
//func addOneToInt(someInt:Int) -> Int {
//    return someInt + 1
//}
//
//for element in array {
//    if (element % 2 == 0) {
//        XCPCaptureValue("even", element)
//    } else {
//        XCPCaptureValue("odd", element)
//    }
//    var avalue = modFive(element)
//    addOneToInt(element)
//}
