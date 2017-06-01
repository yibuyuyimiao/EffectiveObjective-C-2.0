//
//  UIImage+extion.m
//  项目中的图片
//
//  Created by ls on 2017/6/1.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "UIImage+extion.h"

@implementation UIImage (extion)


+(instancetype)waterMakeImage:(NSString *)imageName underImage:(NSString *)underImageName{

    if(self){
        
    }
    //根据传进来的数据创建图片-主图
    UIImage* underImage = [UIImage imageNamed:underImageName];
    
    //创建位图上下文，在创建的时候已经是开启了位图上下文了。
    /*
     第一个参数是传入原始图片的的尺寸
     第二个参数是alpha通道，yes是不透明，no是透明，选择no生成的图片会比较清晰
     第三个参数是生成图片与原始图片的比例，这里如果传入0.0的话，表示默认是系统的比例
     */
    UIGraphicsBeginImageContextWithOptions(underImage.size, NO, 0.0);
    
    //绘制主图
    UIScreen* screen = [UIScreen mainScreen];
    float underImageW = underImage.size.width > screen.bounds.size.width ? screen.bounds.size.width:underImage.size.width;
    float underImageH = underImageW/underImage.size.width*underImage.size.height;
    [underImage drawInRect:CGRectMake(0, 0, underImageW, underImageH)];
    
    //根据传进来的数据创建图片-水印
    UIImage* waterMakeImage = [UIImage imageNamed:imageName];
    //绘制水印
    float waterMakeImageH = waterMakeImage.size.height>underImage.size.height*0.10?underImage.size.height*0.10:waterMakeImage.size.height;
    float waterMakeImageW = waterMakeImage.size.width*(waterMakeImageH/waterMakeImage.size.height);
    float waterMakeImageX = underImageW-waterMakeImageW;
    float waterMakeImageY = underImageH-waterMakeImageH;
    
    [waterMakeImage drawInRect:CGRectMake(waterMakeImageX, waterMakeImageY, waterMakeImageW, waterMakeImageH)];
    //    NSLog(@"%.2f,%.2f,%.2f,%.2f",waterMakeImageX,waterMakeImageY,waterMakeImageW,waterMakeImageH);
    
    //用UIImage创建对象接受位图上下文绘制好的图片
    UIImage* bitmapImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束位图编辑
    UIGraphicsEndImageContext();
    
    return bitmapImage;
}

@end
