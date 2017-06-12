//
//  EOCSquare.m
//  全能初始化方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCSquare.h"

@implementation EOCSquare


- (id)initWithDimension:(float)dimension{


    return [super initWithWidth:dimension andHeight:dimension];
}

-(id)initWithWidth:(float)width andHeight:(float)height{
    
    float dimension = MAX(width, height);
    return [self initWithDimension:dimension];


}

// 不让调用

//-(id)initWithWidth:(float)width andHeight:(float)height{
//
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Must use initWithDimension:insted" userInfo:nil];
//
//
//
//}

-(id)init{

    return [self initWithDimension:5.0f];
    
    }
-(id)initWithCoder:(NSCoder *)aDecoder{
    if ((self = [super initWithCoder:aDecoder])) {
        
    }
    return self;


}



@end
