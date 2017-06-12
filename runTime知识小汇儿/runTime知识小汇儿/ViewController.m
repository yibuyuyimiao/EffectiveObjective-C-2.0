//
//  ViewController.m
//  runTime知识小汇儿
//
//  Created by ls on 2017/6/7.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person*tempPerson = [Person alloc];
    tempPerson.age = @"27";
    tempPerson.birthday= @"1201";
    
    
    
    NSArray *tempVNArray =[tempPerson getVariableNamesByObject:tempPerson];
    NSArray *tempPNArray = [tempPerson getPropertieNamesByObject:tempPerson];

     NSLog(@"tempPNArray---------%@",tempPNArray);
     NSLog(@"tempVNArray=========%@",tempVNArray);
    
    [Person createClass];
    
    // 状态栏是由当前app控制的，首先获取当前app
    UIApplication *app = [UIApplication sharedApplication];
    // 遍历当前app的所有属性，找到关于状态栏的
    unsigned int outCount = 0;
//    Ivar *ivars = class_copyIvarList(app.class, &outCount);
//    
//    for (int i = 0; i < outCount; i++) {
//        
//        Ivar ivar = ivars[i];
//        NSLog(@"\n%s",ivar_getName(ivar));
//        //有statusBar这个成员变量 ，所以直接通过KVC来获取
//    }
    id statusBar = [app valueForKeyPath:@"statusBar"];
    
        Ivar *ivars = class_copyIvarList([statusBar class], &outCount);
    
        for (int i = 0; i < outCount; i++) {
    
            Ivar ivar = ivars[i];
            NSLog(@"\n%s",ivar_getName(ivar));
            //通过上图可以看到状态栏中有一个foregroundView成员，它就是当前显示的所有视图
        }
 
    NSArray*children =  [[statusBar valueForKeyPath:@"foregroundView"] subviews];

    int type = 0;
    
    for (id child in children) {
        NSLog(@"--%@",[children class]);
        if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
           
            unsigned int outCount = 0;
            Ivar *ivars = class_copyIvarList([child class], &outCount);
            for (int i =0 ; i < outCount; i++) {
                
                Ivar ivar = ivars[i];
                NSLog(@"+++++++++++%s",ivar_getName(ivar));
            }
            
            type = [[child valueForKeyPath:@"dataNetworkType"] intValue];
            
        }
        
    }
    NSLog(@"type --- %d",type);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
