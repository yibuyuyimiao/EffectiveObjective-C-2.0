//
//  Cat.m
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "Cat.h"

@implementation Cat

    -(void)printAnimalFood{
        
        NSLog(@"Cat like to eat fish");
    }
    
    -(NSString*)description{
    
        return [NSString stringWithFormat:@"name = %@,age = %li,color = %@ ",_name,(long)_age,self.colorOfCat];
    }
    
@end
