//
//  ViewController.m
//  项目中的图片
//
//  Created by ls on 2017/6/1.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+extion.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *practiceDemo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    [self demo3];
    

    //[self demo2];
    
    
}

#pragma mark -- 添加水印

-(void)demo3{

    UIImage* image = [UIImage waterMakeImage:@"空白页.png" underImage:@"空白页.png"];
    UIImageView* imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame = CGRectMake(0 , [UIScreen mainScreen].bounds.size.height/3, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height/2);
    [self.view addSubview:imageView];

}


#pragma mark -- CGImageRef的使用

-(void)demo2{

    UIImage *image = [UIImage imageNamed:@"空白页.png"];
    NSLog(@"%f=====%f",image.size.width,image.size.height);
      NSLog(@"%f=====%f",image.size.width*image.scale,image.size.height*image.scale);
    
    // 转化为位图
    CGImageRef temImg = image.CGImage;
    
    NSLog(@"%zu+++++++++%zu",CGImageGetWidth(temImg),CGImageGetHeight(temImg));
    
    temImg=CGImageCreateWithImageInRect(temImg, CGRectMake(0, 0, 315, 100));
    //得到新的图片
    UIImage *new = [UIImage imageWithCGImage:temImg];
    //释放位图对象
    CGImageRelease(temImg);
    
    
    self.practiceDemo.image = image;

}

#pragma mark -- 输出为1x的图片的像素
-(void)demo{

    //    UIImage *image = [UIImage imageNamed:@"空白页.png"];
    //    NSLog(@"%f=====%f",image.size.width,image.size.height);
    //
    
    UIImage *image1 = [UIImage imageNamed:@"空白页@2x.png"];
    NSLog(@"===%f=====%f",image1.size.width,image1.size.height);
    
    //    UIImage *image2 = [UIImage imageNamed:@"空白页@3x.png"];
    //    NSLog(@"====+++++++%f=====%f",image2.size.width,image2.size.height);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
