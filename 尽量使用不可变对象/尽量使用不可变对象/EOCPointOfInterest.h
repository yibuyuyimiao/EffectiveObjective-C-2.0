//
//  EOCPointOfInterest.h
//  尽量使用不可变对象
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPointOfInterest : NSObject

@property(nonatomic,copy,readonly) NSString*identifier;

@property(nonatomic,copy,readonly) NSString*title;

@property(nonatomic,assign,readonly)float    latitude;

@property(nonatomic,assign,readonly)float longitude;

-(id)initWithIdentifier:(NSString*)identifier
                  title:(NSString*)title
               latitude:(float)latitude
              longitude:(float)longitude;

@end
