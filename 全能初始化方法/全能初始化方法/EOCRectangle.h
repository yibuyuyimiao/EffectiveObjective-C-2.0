//
//  EOCRectangle.h
//  全能初始化方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCRectangle : NSObject<NSCoding>

@property(nonatomic,assign,readonly)float width;

@property(nonatomic,assign,readonly)float height;

-(id)initWithWidth:(float)width andHeight:(float)height;

@end
