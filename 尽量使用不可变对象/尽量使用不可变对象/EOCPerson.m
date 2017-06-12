//
//  EOCPerson.m
//  尽量使用不可变对象
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson ()

@property(nonatomic,copy,readwrite)NSString*firstName;
@property(nonatomic,copy,readwrite)NSString*lastName;


@end

@implementation EOCPerson{
    
    NSMutableSet *_internalFriends;

}

-(NSSet*)friends{

    return [_internalFriends copy];
    
    }


-(void)addFriend:(EOCPerson *)person{

    [_internalFriends addObject:person];
}

-(void)removeFriend:(EOCPerson *)person{

    [_internalFriends removeObject:person];
}


-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{

    if ((self = [super init])) {
        
        _firstName = firstName;
        _lastName = lastName;
        _internalFriends = [NSMutableSet new];
        
    }

    return self;

}


@end
