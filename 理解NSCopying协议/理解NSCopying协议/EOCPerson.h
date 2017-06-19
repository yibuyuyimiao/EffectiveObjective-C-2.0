//
//  EOCPerson.h
//  理解NSCopying协议
//
//  Created by ls on 2017/6/13.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject<NSCopying>


@property(nonatomic,copy,readonly)NSString *firstName;
@property(nonatomic,copy,readonly)NSString *lastName;

-(id)initWithFirstName:(NSString*)firstName andLastName:(NSString*)lastName;

-(void)addFriend:(EOCPerson*)person;
-(void)removeFriend:(EOCPerson*)person;

@end
