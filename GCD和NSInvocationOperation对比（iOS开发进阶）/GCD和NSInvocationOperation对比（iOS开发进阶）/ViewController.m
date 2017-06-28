//
//  ViewController.m
//  GCD和NSInvocationOperation对比（iOS开发进阶）
//
//  Created by ls on 2017/6/19.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "ViewController.h"
typedef   void(^loggerBlock)();

static const float IndicatorWidth = 40;

static const NSTimeInterval hiddenTipView = 3;

#define screenWidth  ([UIScreen mainScreen].bounds.size.width)
#define screenHeight ([UIScreen mainScreen].bounds.size.height)

static NSOperationQueue *queue;

@interface ViewController ()

@property(nonatomic,strong)UIActivityIndicatorView * indication;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   [self.view addSubview:self.indication];
    
    
}


- (IBAction)someClick:(id)sender {
    
    
    
    [self handleUseGCD];
    
}


#pragma mark -- 使用GCD

-(void)handleUseGCD{

    self.indication.hidden = NO;
    [self.indication startAnimating];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    
        
        NSURL*url = [NSURL URLWithString:@"http://www.youdao.com"];
        NSError *error;
        NSString*data = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
        
        if (data != nil) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
               
                [self.indication stopAnimating];
                self.indication.hidden = YES;
                
                // 更新ui
                
                
                
            });
            
            
            
        }else{
            NSLog(@"error %@",error);
            
            
            dispatch_time_t hiddenTime = dispatch_time(DISPATCH_TIME_NOW, hiddenTipView*NSEC_PER_SEC);
            
            dispatch_after(hiddenTime, dispatch_get_main_queue(), ^{
                
                [self.indication stopAnimating];
                self.indication.hidden = YES;
            });
            
            
            
        }

        
        
    });
    
    

}





#pragma mark -- 使用invocation
-(void)handleUseNSInvocation{

    self.indication.hidden = NO;
    [self.indication startAnimating];
    
    queue = [[NSOperationQueue alloc]init];
    
    NSInvocationOperation *op = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(download) object:nil] ;
    [queue addOperation:op];

}


-(void)download{
    
    NSURL*url = [NSURL URLWithString:@"http://www.youdao.com"];
    NSError *error;
    NSString*data = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
    
    if (data != nil) {
        
        [self performSelectorOnMainThread:@selector(download_completed:) withObject:data waitUntilDone:NO];
    }else{
        NSLog(@"error %@",error);
        
        
        dispatch_time_t hiddenTime = dispatch_time(DISPATCH_TIME_NOW, hiddenTipView*NSEC_PER_SEC);
        
        dispatch_after(hiddenTime, dispatch_get_main_queue(), ^{
           
            [self.indication stopAnimating];
            self.indication.hidden = YES;
        });
        
        
    
    }


}


-(void)download_completed:(NSString*)data{
    
    NSLog(@"call back");
    
    [self.indication stopAnimating];
    self.indication.hidden = YES;
    


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


#pragma mark -- 懒加载
-(UIActivityIndicatorView *)indication{

    if (_indication == nil) {
        
        
      //  _indication =[[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(screenWidth/2-IndicatorWidth/2, screenHeight/2-IndicatorWidth/2, IndicatorWidth, IndicatorWidth)];
        
         _indication =[[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
        
        // 设置此句才会显示菊花。类中的属性和方法
        _indication.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        
    }
    
    

    return _indication;
}

#pragma mark -- block 的定义

-(void)block{
    
   // void (^loggerBlock)();
    
   loggerBlock loggerBlock = ^{
    
        NSLog(@"hello world");
    
    };
    
    loggerBlock();


}




@end
