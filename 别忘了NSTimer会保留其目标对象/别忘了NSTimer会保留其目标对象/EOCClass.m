//
//  EOCClass.m
//  别忘了NSTimer会保留其目标对象
//
//  Created by ls on 2017/5/15.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "EOCClass.h"

@interface EOCClass(){
    
    NSTimer *_pollTimer;
    
}

@end


@implementation EOCClass

-(void)startPolling{
    
    // _pollTimer= [NSTimer scheduledTimerWithTimeInterval:1 repeats:<#(BOOL)#> block:<#^(NSTimer * _Nonnull timer)block#>]
    
    
    _pollTimer  = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(p_doPoll) userInfo:nil repeats:YES];
}

-(void)p_doPoll{
    
    NSLog(@"1");
    
}

-(void)stopPolling{
    
    [_pollTimer invalidate];
    _pollTimer = nil;
    
}

- (void)dealloc
{
    [_pollTimer invalidate];
}


@end
