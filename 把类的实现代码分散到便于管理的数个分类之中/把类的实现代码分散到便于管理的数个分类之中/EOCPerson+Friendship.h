//
//  EOCPerson+Friendship.h
//  把类的实现代码分散到便于管理的数个分类之中
//
//  Created by ls on 2017/6/14.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson (Friendship)

-(void)addFriend:(EOCPerson*)person;
-(void)removeFriend:(EOCPerson*)person;
-(BOOL)isFriendWith:(EOCPerson*)person;


@end
