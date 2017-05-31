//
//  MyModel.h
//  多态
//
//  Created by ls on 2017/5/25.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface MyModel : NSObject

@property(nonatomic,strong)NSString *prop1;

@property(nonatomic,strong)NSString *prop2;

// ...

@property(nonatomic,strong)NSMutableDictionary *dictionary;


+(objc_property_t)parseSelector:(SEL)selector isGetter:(BOOL*)isGetter isSetter:(BOOL*)isSetter;




@end
