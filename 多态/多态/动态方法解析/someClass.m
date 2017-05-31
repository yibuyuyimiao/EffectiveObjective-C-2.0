//
//  someClass.m
//  多态
//
//  Created by ls on 2017/5/25.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "someClass.h"
#import <objc/runtime.h>

void fooMethod(id obj, SEL _cmd){

    NSLog(@"Doing foo");
}


@implementation someClass

-(void)foo{

    NSLog(@"method foo was called on %@",[self class]);


}

+(BOOL)resolveInstanceMethod:(SEL)sel{

    if (sel == @selector(crashObject)) {
     
        class_addMethod([self class], sel, (IMP)fooMethod, "v@:");
        return YES;
        
    }
    
    return [super resolveInstanceMethod:sel];


}


+(BOOL)resolveClassMethod:(SEL)sel{
    
    if (sel == @selector(crash)) {
        
        class_addMethod([self class], sel, (IMP)fooMethod, "v@:");
        return YES;
        
    }
    
    return [super resolveClassMethod:sel];
    
    
}



@end
