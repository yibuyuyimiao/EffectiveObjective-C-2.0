//
//  person2.m
//  多态
//
//  Created by ls on 2017/5/22.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "person2.h"

@implementation person2

-(void)setName:(NSString *)n{

    name = n;
    
}


+ (NSString *)description
{
    return @"AAA";
}


#pragma mark 实例对象输出的结果
- (NSString *)description
{
    // NSLog(@"%@",self); 引发死循环
    return [NSString stringWithFormat:@"name = %@ age = %d",name,self.age];
}
@end
