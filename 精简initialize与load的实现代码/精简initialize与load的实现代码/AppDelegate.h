//
//  AppDelegate.h
//  精简initialize与load的实现代码
//
//  Created by ls on 2017/5/15.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
/* + （void）load 对于加入运行期系统的每个类及分类来说，必定会调用此方法，而且仅调用一次，当包含类或分类的程序库载入系统时，就会执行此方法
 
 */

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

