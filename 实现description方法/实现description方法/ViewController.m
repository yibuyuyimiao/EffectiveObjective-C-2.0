//
//  ViewController.m
//  实现description方法
//
//  Created by ls on 2017/6/12.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "ViewController.h"
#import "EOCPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    EOCPerson *person = [[EOCPerson alloc] initWithFirstName:@"Bob" lastName:@"Smith"];
    
    NSLog(@"%@",person);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
