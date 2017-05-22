//
//  person2.h
//  多态
//
//  Created by ls on 2017/5/22.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person2 : NSObject{

    NSString *name;
    }

-(void)setName:(NSString*)n;
@property(assign,nonatomic) int age;

+ (NSString *)description;
- (NSString *)description;


@end
