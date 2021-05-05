//
//  NSObject+ObjCTestClass.m
//  OKPod1
//
//  Created by Olga Koroleva on 04.05.2021.
//

#import "ObjCTestClass.h"

//for static
//#import <OKPod1-Swift.h>

//for dynamic framework
#import <OKPod1/OKPod1-Swift.h>

@implementation ObjCTestClass

- (void)test {
    SwiftTestClass* testClassInstance = [SwiftTestClass new];
    NSLog(@"%@", [testClassInstance test]);
}

@end
