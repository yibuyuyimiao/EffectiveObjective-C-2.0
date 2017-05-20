//
//  ViewController.m
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Dog *dog = [[Dog alloc]init];
    dog.name = @"狗";
    dog.age = 12;
    dog.weight = 12.34;
    [dog printAnimalFood];
    NSLog(@"%@",dog.description);
    //父类的对象指针指向子类的对象
    //调用的方法看具体对象的类型,先从子类查找对应方法的实现,子类没有实现对应的方法,跳到父类查找对应的方法实现,父类没有实现对应的方法,再继续向上追踪到父类的父类
    animal *dogAnimal = dog;
    [dogAnimal printAnimalFood];
    NSLog(@"%@",dogAnimal.description);
    
    Cat *cat = [[Cat alloc] init];
    cat.name = @"猫";
    cat.age  = 10;
    cat.colorOfCat = @"白色";
    [cat printAnimalFood];
    NSLog(@"%@",[cat description]);
    
    animal *catAnimal = cat;
    [catAnimal printAnimalFood];
    NSLog(@"%@",catAnimal.description);
    
    NSLog(@"==========多态=========");
    //多态,根据不同的对象,打印不同的结果
    NSLog(@"%@",dog);
    NSLog(@"%@",cat);
    
    
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
