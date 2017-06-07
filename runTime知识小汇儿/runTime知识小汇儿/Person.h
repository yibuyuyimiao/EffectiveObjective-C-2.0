//
//  Person.h
//  runTime知识小汇儿
//
//  Created by ls on 2017/6/7.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//
// http://www.jianshu.com/p/c79572a70503
#import <Foundation/Foundation.h>

@interface Person : NSObject{

    NSString *_name;
    NSString *_sex;
}

@property(nonatomic,strong)NSString *age;

@property(nonatomic,strong)NSString *birthday;

- (NSArray *)getVariableNamesByObject:(id)object;

- (NSArray*)getPropertieNamesByObject:(id)object;

@end
