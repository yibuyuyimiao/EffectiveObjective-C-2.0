//
//  MyModel.m
//  多态
//
//  Created by ls on 2017/5/25.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "MyModel.h"


void dynamicSetter(MyModel *obj,SEL sel,id value){

    objc_property_t prop = [[obj class] parseSelector:sel isGetter:NULL isSetter:NULL];
    
    NSString *propName = [NSString stringWithFormat:@"%s",property_getName(prop)];
    
    if (value) {
        
        obj.dictionary[propName] = value;
        
    }else{
    
        [obj.dictionary removeObjectForKey:propName];
    }

}


id dynamicGetter(MyModel *obj,SEL sel){
    
    objc_property_t prop = [[obj class] parseSelector:sel isGetter:NULL isSetter:NULL];
    
    NSString*propName = [NSString stringWithFormat:@"%s",property_getName(prop)];
    
    return obj.dictionary[propName];

}


@implementation MyModel

@dynamic prop1,prop2;


-(NSMutableDictionary *)dictionary{

    if (!_dictionary) {
        _dictionary = [NSMutableDictionary dictionary];
        
    }
    return _dictionary;
}


+ (objc_property_t)parseSelector:(SEL)selector isGetter:(BOOL *)isGetter isSetter:(BOOL *)isSetter{
    
    NSString*selStr = NSStringFromSelector(selector);
    
    char propName [selStr.length+1];
    memset(propName, 0, selStr.length+1);
    
    if ([selStr hasPrefix:@"set"]) {
        strncpy(propName, selStr.UTF8String+3, selStr.length-4);
        propName[0] += ('a'-'A');
        if (isSetter!=NULL) {
            *isSetter = YES;
        }
    }else{
    
        strncpy(propName, selStr.UTF8String, selStr.length);
        if (isGetter != NULL) {
            
            *isGetter = YES;
        }
    
    }
    
    objc_property_t prop = class_getProperty([self class], propName);
    if (!prop) {
        if (isSetter != NULL) {
            *isSetter = NO;
            
        }
        
        if (isGetter != NULL) {
            
            *isGetter = NO;
        }
        
    }

    return prop;

}


+(BOOL)resolveInstanceMethod:(SEL)sel{


    BOOL isGetter,isSetter;
    // http://blog.csdn.net/wusuopubupt/article/details/8817826
    objc_property_t prop = [self parseSelector:sel isGetter:&isGetter isSetter:&isSetter];
    const char *typeEncoding =property_copyAttributeValue(prop, "T");
    
    if (typeEncoding != NULL) {
        
        if (typeEncoding != NULL) {
            
            if (typeEncoding[0] == '@') {
                
                if (isGetter) {
                    
                    class_addMethod([self class], sel, (IMP)dynamicGetter, "@@:");
                    return YES;
                }
                
                if (isSetter) {
                    
                    class_addMethod([self class], sel, (IMP)dynamicSetter, "v@:@");
                    return YES;
                }
                
            }else{
            
            
            
            
            }
            
        }
        
        
    }

    return NO;

}


@end
