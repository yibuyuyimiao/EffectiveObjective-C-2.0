//
//  EOCPerson.h
//  尽量使用不可变对象
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property(nonatomic,copy,readonly)NSString*firstName;

@property(nonatomic,copy,readonly)NSString*lastName;

@property(nonatomic,strong,readonly)NSSet *friends;

-(id)initWithFirstName:(NSString*)firstName andLastName:(NSString*)lastName;
-(void)addFriend:(EOCPerson*)person;
-(void)removeFriend:(EOCPerson*)person;


@end
