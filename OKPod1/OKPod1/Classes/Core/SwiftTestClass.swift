//
//  Core1.swift
//  OKPod1
//
//  Created by Olga Koroleva on 04.05.2021.
//

import Foundation
import CocoaLumberjack

@objcMembers
public class SwiftTestClass: NSObject {
    public func test() -> String {
        //test Obj-c class
        let testInstance = ObjCTestClass()
        testInstance.someProperty = "OKPod1 method called"
        
        //test that CocoaLumberjack imported
        DDLogWarn(testInstance.someProperty)
        return testInstance.someProperty
    }
    
    public func imageFromBundle() -> UIImage? {
        guard let bundleUrl = Bundle(for: SwiftTestClass.self).resourceURL?.appendingPathComponent("OKPod1.bundle") else {
            return nil
        }
        let resourceBundle = Bundle(url: bundleUrl)
        return UIImage(named: "backButton", in: resourceBundle, compatibleWith: nil)
    }
}

