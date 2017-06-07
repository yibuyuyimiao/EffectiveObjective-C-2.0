//
//  Person.m
//  runTime知识小汇儿
//
//  Created by ls on 2017/6/7.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

// 获取类的所有属性名
- (NSArray*)getPropertieNamesByObject:(id)object{

    unsigned int outCount ,i;
    
    // 获取注册类的属性列表
    // objc_property_t : 指向objc_property结构体的指针
    objc_property_t *properties = class_copyPropertyList([object class], &outCount);
    NSLog(@"objc_property_t===============%p",properties);
   // NSLog(@"objc_property_t_______________%@",*properties);
    
    NSMutableArray *nameArray = [[NSMutableArray alloc]initWithCapacity:outCount];
    
    for (  i =0; i < outCount; i++) {
        
        objc_property_t property = properties[i];
        NSString *propertyName = [[NSString alloc]initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        
   
        [nameArray addObject:propertyName];
        
    }
    free(properties);

    return nameArray;

}

// 获取类的成员变量名

-(NSArray*)getVariableNamesByObject:(id)object{

    
    unsigned int outCount ,i;
    
    // 获取类的所有成员变量
    Ivar *ivars =class_copyIvarList([object class], &outCount);
    NSLog(@"ivars===============%p",ivars);
  //  NSLog(@"ivars_______________%@",*ivars);
    //定义一个数组来接收获取的属性名
    NSMutableArray *nameArray = [[NSMutableArray alloc] initWithCapacity:outCount];
    
    for (i = 0; i < outCount; i ++) {
        
        Ivar thisIvar = ivars[i];
        
        const char *type = ivar_getTypeEncoding(thisIvar);
        NSString*stringType = [NSString stringWithCString:type encoding:NSUTF8StringEncoding];
        
        if (![stringType hasPrefix:@"@"]) {
            continue;
        }
        
        NSString *variableName = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        
        [nameArray addObject:variableName];
        
        NSLog(@"i=========%d%@",i,object_getIvar(object, thisIvar));
        
    }
    free(ivars);

    
    return nameArray;
}







@end
