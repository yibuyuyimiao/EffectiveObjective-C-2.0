//
//  EOCPerson.m
//  理解NSCopying协议
//
//  Created by ls on 2017/6/13.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson{
    
    NSMutableSet *_friends;

}

-(id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{

    if ((self = [super init])) {
        
        _firstName = [firstName copy];
        _lastName = [lastName copy];
        _friends = [NSMutableSet new];
        
    }



    return self;
}

-(void)addFriend:(EOCPerson *)person{

    [_friends addObject:person];

}

-(void)removeFriend:(EOCPerson *)person{

    [_friends removeObject:person];
}



-(id)copyWithZone:(NSZone *)zone{
    
    EOCPerson *copy = [[[self class] allocWithZone:zone] initWithFirstName:_firstName andLastName:_lastName];
    
    copy->_friends = [_friends mutableCopy];
    
    return copy;

}

@end
