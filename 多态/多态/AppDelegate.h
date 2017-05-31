//
//  AppDelegate.h
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
/* 
  父类的指针指向子类对象,用父类指针调用子类在父类那继承的方法
 
 消息传递 动态方法解析 消息转发
  
 
 */

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

