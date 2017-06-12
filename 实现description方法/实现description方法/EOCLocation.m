//
//  EOCLocation.m
//  实现description方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCLocation.h"

@implementation EOCLocation


-(id)initWithTitle:(NSString *)title latitude:(float)latitude longitude:(float)longitude{

    if ((self = [super init])) {
        
        _title = [title copy];
        _latitude = latitude;
        _longitude = longitude;
        
    }
    

    return self;


}

-(NSString*)description{
    
    return [NSString stringWithFormat:@"<%@: %p, %@>",[self class],self,@{@"title":_title,@"latitude":@(_latitude),@"longitude":@(_longitude)}];



}

//  以控制台命令打印对象时调用
-(NSString*)debugDescription{

 return [NSString stringWithFormat:@"<%@: %p, %@>",[self class],self,@{@"title":_title,@"latitude":@(_latitude),@"longitude":@(_longitude)}];

}

@end
