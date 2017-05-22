//
//  AppDelegate.h
//  别忘了NSTimer会保留其目标对象
//
//  Created by ls on 2017/5/15.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//
/* NSTimer 对象会保留其目标，直到计时器本身失效为止，调用invalidate方法可令计时器失效，另外，一次性的计时器在触发完成任务之后也会失效
 
   反复执行任务的计时器，很容易引入保留环，如果这种计时器的目标对象又保留了计时器本身，那肯定会导致保留环。这种保留环环状保留关系，可能是直接发生的，也可能是通过对象图里的其他对象间接发生的
 
 
 */

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

