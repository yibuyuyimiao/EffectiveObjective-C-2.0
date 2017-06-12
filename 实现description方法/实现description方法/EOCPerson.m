//
//  EOCPerson.m
//  实现description方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{

    if ((self = [super init])) {
        
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    
    return  self;
}


-(NSString*)description{

    return [NSString stringWithFormat:@"<%@: %p, \"%@  %@ \">",[self class],self,_firstName,_lastName];

}

@end
