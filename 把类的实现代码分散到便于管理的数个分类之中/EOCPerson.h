//
//  EOCPerson.h
//  把类的实现代码分散到便于管理的数个分类之中
//
//  Created by ls on 2017/6/14.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property(nonatomic,copy,readonly)NSString *firstName;
@property(nonatomic,strong,readonly)NSArray *friends;

-(id)initWithFirstName:(NSString*)firstName andLastName:(NSString*)lastName;

@end
