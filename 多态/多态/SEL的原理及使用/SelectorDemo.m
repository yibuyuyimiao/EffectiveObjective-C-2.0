//
//  SelectorDemo.m
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "SelectorDemo.h"

@implementation SelectorDemo
    //@synthesize methodTest = _methodTest;
    
    -(void)parentMethod{
        
        NSLog(@"parent method call success!");
    }
    
    -(void)TestParentMethod{
    
        if (_methodTest) {
            [self performSelector:_methodTest withObject:nil ];
        }
    }
    
    -(void)TestSubMethod{
    
        if (_methodTest) {
            [self performSelector:_methodTest withObject:nil];
        }
    
    }
    
@end
