//
//  ViewController.m
//  runTime知识小汇儿
//
//  Created by ls on 2017/6/7.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person*tempPerson = [Person alloc];
    tempPerson.age = @"27";
    tempPerson.birthday= @"1201";
    
    
    
    NSArray *tempVNArray =[tempPerson getVariableNamesByObject:tempPerson];
    NSArray *tempPNArray = [tempPerson getPropertieNamesByObject:tempPerson];

     NSLog(@"tempPNArray---------%@",tempPNArray);
     NSLog(@"tempVNArray=========%@",tempVNArray);


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
