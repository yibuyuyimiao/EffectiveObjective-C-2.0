//
//  EOCPerson.h
//  实现description方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property(nonatomic,copy,readonly)NSString*firstName;

@property(nonatomic,copy,readonly)NSString*lastName;

-(id)initWithFirstName:(NSString*)firstName
              lastName:(NSString*)lastName;

@end
