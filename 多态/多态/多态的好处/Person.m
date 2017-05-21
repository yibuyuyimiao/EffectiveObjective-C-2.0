//
//  Person.m
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "Person.h"

@implementation Person

    /*
     
     - (void) printWithColor:(ColorPrinter *)colorPrint{
     
     [colorPrint print];
     
     }
     
     
     
     - (void) printWithBlack:(BlackPrinter *)blackPrint{
     
     [blackPrint print];
     
     }
     
     */
    
    
    
- (void) doPrint:(printer *)printer{  
    
    
   
    [printer print];  
    
}
    
@end
