//
//  ___NSTimer________Tests.m
//  别忘了NSTimer会保留其目标对象Tests
//
//  Created by ls on 2017/5/15.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ___NSTimer________Tests : XCTestCase

@end

@implementation ___NSTimer________Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
