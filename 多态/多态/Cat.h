//
//  Cat.h
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "animal.h"

@interface Cat : animal{
    
    NSString *_colorOfCat;
}
    @property(copy,nonatomic)NSString *colorOfCat;

@end
