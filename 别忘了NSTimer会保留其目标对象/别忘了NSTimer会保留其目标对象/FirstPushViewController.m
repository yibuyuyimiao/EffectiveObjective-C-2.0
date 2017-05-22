//
//  FirstPushViewController.m
//  别忘了NSTimer会保留其目标对象
//
//  Created by ls on 2017/5/15.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "FirstPushViewController.h"
#import "EOCClass.h"

@interface FirstPushViewController ()

@property(nonatomic,strong)EOCClass * eocclass;
@end

@implementation FirstPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.eocclass = [[EOCClass alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self.eocclass startPolling];
}

-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    [self.eocclass stopPolling];

}

@end
