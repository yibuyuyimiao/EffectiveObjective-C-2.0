//
//  main.m
//  僵尸对象调试内存管理
//
//  Created by ls on 2017/6/15.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>


struct obj_layout{

    NSUInteger retained;
};


@interface EOCClass : NSObject

@end

@implementation EOCClass

// 僵尸类如何把待回收对象
-(void)demo{
    
//   Class cls = object_getClass(self);
//    const char *clsName = class_getName(cls);
//    
//    const char *zombieClsName ="_NSZombie_"+clsName;
//    
//    Class zombieCls= objc_lookUpClass(zombieClsName);
//    
//    if (! zombieCls) {
//        
//        Class baseZombieCls = objc_lookUpClass("_NSZobie_");
//        
//        zombieCls = objc_lookUpClass(baseZombieCls,zombieClsName,0);
//        
//        
//    }
//    objc_destructInstance(self);
//    
//    object_setClass(self, zombieCls);
    
    
    
}


-(void)demo1{

    id obj = [NSObject alloc];
    
    


}


+(id)alloc{

    return [self allocWithZone:NSDefaultMallocZone()];
}

+(id)allocWithZone:(struct _NSZone *)zone{


    return NSAllocateObject(self, 0, zone);
}






@end

void PrintClassInfo(id obj){

    Class cls = object_getClass(obj);
    
    Class superCls = class_getSuperclass(cls);
    
    NSLog(@"=== %s : %s ===",class_getName(cls),class_getName(superCls));
    


}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        EOCClass *obj = [[EOCClass alloc]init];
        NSLog(@"Before release:");
        
        PrintClassInfo(obj);
        
        [obj release];
        
        NSLog(@"After release:");
        
        PrintClassInfo(obj);
        
        
        
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}



