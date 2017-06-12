//
//  EOCRectangle.m
//  全能初始化方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCRectangle.h"

@implementation EOCRectangle

-(id)initWithWidth:(float)width andHeight:(float)height{

    if ((self = [super init])) {
        
        _width = width;
        _height = height;
    }
    return self;
}

// 使用默认值
//-(id)init{
//
//    return [self initWithWidth:5.0f andHeight:10.0f];
//}

-(id)init{

   @throw  [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Must use initWithWidth:andHeight: instead" userInfo:nil];

}

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    if ((self = [super init])) {
        
        _height = [aDecoder decodeFloatForKey:@"height"];
        _width = [aDecoder decodeFloatForKey:@"width"];
    }

    return self;

}
@end
