//
//  animal.h
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface animal : NSObject{

    NSString *_name;
    NSInteger _age;
}
   @property(copy,nonatomic)NSString*name;
   @property(assign,nonatomic)NSInteger age;
   -(void)printAnimalFood;
    
    
@end
