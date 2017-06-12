//
//  EOCLocation.h
//  实现description方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCLocation : NSObject

@property(nonatomic,copy,readonly)NSString *title;

@property(nonatomic,assign,readonly)float latitude;
@property (nonatomic,assign,readonly)float longitude;

-(id)initWithTitle:(NSString *)title latitude:(float)latitude longitude:(float)longitude;
@end
