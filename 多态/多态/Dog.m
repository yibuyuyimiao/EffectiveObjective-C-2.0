//
//  Dog.m
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "Dog.h"

@implementation Dog

    -(void)printAnimalFood{
    
        NSLog(@"Dog like to eat bone");
    }
    
    - (NSString *)description
    {
        return [NSString stringWithFormat:@"name = %@,age =%li,weight = %.2f", _name,(long)_age,_weight];
    }
@end
