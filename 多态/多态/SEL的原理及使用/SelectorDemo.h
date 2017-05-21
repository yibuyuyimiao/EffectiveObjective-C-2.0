//
//  SelectorDemo.h
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectorDemo : NSObject{
   // SEL _methodTest;
}
    @property(nonatomic,assign)SEL methodTest;
    -(void)TestParentMethod;
    -(void)TestSubMethod;
    
@end
