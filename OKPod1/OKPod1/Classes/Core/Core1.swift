//
//  Core1.swift
//  OKPod1
//
//  Created by Olga Koroleva on 04.05.2021.
//

import Foundation
import CocoaLumberjack

@objc public class Core1: NSObject {
    public func test() -> String {
        //test Obj-c class
        let testInstance = ObjCTestClass()
        testInstance.someProperty = "OKPod1 method called"
        
        //test that CocoaLumberjack imported
        DDLogWarn(testInstance.someProperty)
        return testInstance.someProperty
    }
}
