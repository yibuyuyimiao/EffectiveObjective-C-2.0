//
//  KCView.m
//  项目中的图片
//
//  Created by ls on 2017/6/2.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "KCView.h"

#define  screenWidth  ([UIScreen mainScreen].bounds.size.width)

#define  screenHeight  ([UIScreen mainScreen].bounds.size.height)

@implementation KCView


#pragma mark -- 绘制线
- (void)drawRect:(CGRect)rect {
   
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
   // [self drawLinearGradient:context];
    
    
   // [self drawRadialGradient:context];
    
    //    [self drawRectWithContext:context];
    //    [self drawRectByUIKitWithContext:context];
    //    [self drawEllipse:context];
    //    [self drawArc:context];
      
    //  [self drawCurve:context];
        
    //  [self drawText:context];
    //  [self drawImage:context];
    
    [self drawRectWithLinearGradientFill:context];
    
    
}

#pragma mark -- 有颜色填充模式












#pragma mark -- 叠加模式

-(void)drawRectByUIKitWithContext2:(CGContextRef)context{
    
    
    CGRect rect= CGRectMake(0, 130.0, 320.0, 50.0);
    CGRect rect1= CGRectMake(0, 390.0, 320.0, 50.0);
    
    
    CGRect rect2=CGRectMake(20, 50.0, 10.0, 250.0);
    CGRect rect3=CGRectMake(40.0, 50.0, 10.0, 250.0);
    CGRect rect4=CGRectMake(60.0, 50.0, 10.0, 250.0);
    CGRect rect5=CGRectMake(80.0, 50.0, 10.0, 250.0);
    CGRect rect6=CGRectMake(100.0, 50.0, 10.0, 250.0);
    CGRect rect7=CGRectMake(120.0, 50.0, 10.0, 250.0);
    CGRect rect8=CGRectMake(140.0, 50.0, 10.0, 250.0);
    CGRect rect9=CGRectMake(160.0, 50.0, 10.0, 250.0);
    CGRect rect10=CGRectMake(180.0, 50.0, 10.0, 250.0);
    CGRect rect11=CGRectMake(200.0, 50.0, 10.0, 250.0);
    CGRect rect12=CGRectMake(220.0, 50.0, 10.0, 250.0);
    CGRect rect13=CGRectMake(240.0, 50.0, 10.0, 250.0);
    CGRect rect14=CGRectMake(260.0, 50.0, 10.0, 250.0);
    CGRect rect15=CGRectMake(280.0, 50.0, 10.0, 250.0);
    
    CGRect rect16=CGRectMake(30.0, 310.0, 10.0, 250.0);
    CGRect rect17=CGRectMake(50.0, 310.0, 10.0, 250.0);
    CGRect rect18=CGRectMake(70.0, 310.0, 10.0, 250.0);
    CGRect rect19=CGRectMake(90.0, 310.0, 10.0, 250.0);
    CGRect rect20=CGRectMake(110.0, 310.0, 10.0, 250.0);
    CGRect rect21=CGRectMake(130.0, 310.0, 10.0, 250.0);
    CGRect rect22=CGRectMake(150.0, 310.0, 10.0, 250.0);
    CGRect rect23=CGRectMake(170.0, 310.0, 10.0, 250.0);
    CGRect rect24=CGRectMake(190.0, 310.0, 10.0, 250.0);
    CGRect rect25=CGRectMake(210.0, 310.0, 10.0, 250.0);
    CGRect rect26=CGRectMake(230.0, 310.0, 10.0, 250.0);
    CGRect rect27=CGRectMake(250.0, 310.0, 10.0, 250.0);
    CGRect rect28=CGRectMake(270.0, 310.0, 10.0, 250.0);
    CGRect rect29=CGRectMake(290.0, 310.0, 10.0, 250.0);
    
    
    [[UIColor yellowColor]set];
    UIRectFill(rect);
    
    [[UIColor greenColor]setFill];
    UIRectFill(rect1);
    
    [[UIColor redColor]setFill];
    UIRectFillUsingBlendMode(rect2, kCGBlendModeClear);
    UIRectFillUsingBlendMode(rect3, kCGBlendModeColor);
    UIRectFillUsingBlendMode(rect4, kCGBlendModeColorBurn);
    UIRectFillUsingBlendMode(rect5, kCGBlendModeColorDodge);
    UIRectFillUsingBlendMode(rect6, kCGBlendModeCopy);
    UIRectFillUsingBlendMode(rect7, kCGBlendModeDarken);
    UIRectFillUsingBlendMode(rect8, kCGBlendModeDestinationAtop);
    UIRectFillUsingBlendMode(rect9, kCGBlendModeDestinationIn);
    UIRectFillUsingBlendMode(rect10, kCGBlendModeDestinationOut);
    UIRectFillUsingBlendMode(rect11, kCGBlendModeDestinationOver);
    UIRectFillUsingBlendMode(rect12, kCGBlendModeDifference);
    UIRectFillUsingBlendMode(rect13, kCGBlendModeExclusion);
    UIRectFillUsingBlendMode(rect14, kCGBlendModeHardLight);
    UIRectFillUsingBlendMode(rect15, kCGBlendModeHue);
    UIRectFillUsingBlendMode(rect16, kCGBlendModeLighten);
    
    UIRectFillUsingBlendMode(rect17, kCGBlendModeLuminosity);
    UIRectFillUsingBlendMode(rect18, kCGBlendModeMultiply);
    UIRectFillUsingBlendMode(rect19, kCGBlendModeNormal);
    UIRectFillUsingBlendMode(rect20, kCGBlendModeOverlay);
    UIRectFillUsingBlendMode(rect21, kCGBlendModePlusDarker);
    UIRectFillUsingBlendMode(rect22, kCGBlendModePlusLighter);
    UIRectFillUsingBlendMode(rect23, kCGBlendModeSaturation);
    UIRectFillUsingBlendMode(rect24, kCGBlendModeScreen);
    UIRectFillUsingBlendMode(rect25, kCGBlendModeSoftLight);
    UIRectFillUsingBlendMode(rect26, kCGBlendModeSourceAtop);
    UIRectFillUsingBlendMode(rect27, kCGBlendModeSourceIn);
    UIRectFillUsingBlendMode(rect28, kCGBlendModeSourceOut);
    UIRectFillUsingBlendMode(rect29, kCGBlendModeXOR);



}








#pragma mark -- 渐变填充

-(void)drawRectWithLinearGradientFill:(CGContextRef)context{


    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    UIRectClip(CGRectMake(20, 50, 280, 300));
    
    CGFloat compoents[12] = {
    
        248.0/255.0,86.0/255.0,86.0/255.0,1,
        249.0/255.0,127.0/255.0,127.0/255.0,1,
        1.0,1.0,1.0,1.0
    
    };

    CGFloat locations[3] = {0,0.3,1.0};
    
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
    
    CGContextDrawLinearGradient(context, gradient, CGPointMake(20, 50), CGPointMake(300, 300), kCGGradientDrawsAfterEndLocation);
    
    CGColorSpaceRelease(colorSpace);






}


#pragma mark -- 线性渐变

-(void)drawLinearGradient:(CGContextRef)context{

    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGFloat compoents[12] = {
        248.0/255.0,86.0/255.0,86.0/255.0,1,
        249.0/255.0,127.0/255.0,127.0/255.0,1,
        1.0,1.0,1.0,1.0
    };
    
    CGFloat locations[3] = {0,0.3,1.0};
    
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
    
    CGContextDrawLinearGradient(context, gradient, CGPointZero, CGPointMake(320, 300), kCGGradientDrawsAfterEndLocation);
    
    CGColorSpaceRelease(colorSpace);

}


#pragma mark - 径向渐变

-(void)drawRadialGradient:(CGContextRef)context{

    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGFloat compoents[12]={
        248.0/255.0,86.0/255.0,86.0/255.0,1,
        249.0/255.0,127.0/255.0,127.0/255.0,1,
        1.0,1.0,1.0,1.0
    };
    CGFloat locations[3]={0,0.3,1.0};
    CGGradientRef gradient= CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
    
    CGContextDrawRadialGradient(context, gradient, CGPointMake(160, 284), 0, CGPointMake(165, 289), 150, kCGGradientDrawsAfterEndLocation);
    
    
    CGColorSpaceRelease(colorSpace);
    




}




#pragma mark --绘制图形

-(void)drawImage:(CGContextRef)context{


    UIImage *image = [UIImage imageNamed:@"luyueqi.png"];
    [image drawAtPoint:CGPointMake(10, 50)];
   [image drawInRect:CGRectMake(10, 50, screenWidth-20, screenWidth-20)];
   // [image drawAsPatternInRect:CGRectMake(0, 0, screenWidth, screenHeight)];

   // [image drawInRect:CGRectMake(0, 0, screenWidth, screenHeight)];
}



#pragma mark -- 绘制文字

-(void)drawText:(CGContextRef)context{

    NSString * str = @"Star Walk is the most beautiful stargazing app you’ve ever seen on a mobile device. It will become your go-to interactive astro guide to the night sky, following your every movement in real-time and allowing you to explore over 200, 000 celestial bodies with extensive information about stars and constellations that you find.";
    
    CGRect rect = CGRectMake(20, 50, screenWidth-40, 800);
    UIFont *font = [UIFont systemFontOfSize:18];
    UIColor *color = [UIColor redColor];
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
   // style.baseWritingDirection = NSWritingDirectionRightToLeft;
    style.lineSpacing = 10;
    style.firstLineHeadIndent = 20;
    
    //NSTextAlignment align = NSTextAlignmentLeft;
    //style.alignment = align;
    [str drawInRect:rect withAttributes:@{NSFontAttributeName:font,NSForegroundColorAttributeName:color,NSParagraphStyleAttributeName:style,NSVerticalGlyphFormAttributeName:[NSNumber numberWithInteger:1]}];




}


#pragma mark -- 绘制贝塞尔曲线

-(void)drawCurve:(CGContextRef)context{

    CGContextMoveToPoint(context, 20, 100);
    
    CGContextAddQuadCurveToPoint(context, 160, 0, screenWidth -40, 100);
    
    CGContextMoveToPoint(context, 20, 500);
    
    CGContextAddCurveToPoint(context, 80, 300, 240, 500, screenWidth -40, 300);
    
    [[UIColor yellowColor]setFill];
    [[UIColor redColor]setStroke];
    
    
    CGContextDrawPath(context, kCGPathFillStroke);

}












#pragma mark -- 画矩形

-(void)drawRectWithContext:(CGContextRef)context{

    CGRect rect = CGRectMake(20, 50,screenWidth -40, 50);
    
    CGContextAddRect(context, rect);
    [[UIColor blueColor] set];
    CGContextDrawPath(context, kCGPathFillStroke);
    
}

#pragma mark -- 绘制矩形 （利用UIKit的封装方法）

-(void)drawRectByUIKitWithContext:(CGContextRef)context{

    CGRect rect= CGRectMake(20, 100, screenWidth -40, 50.0);
    CGRect rect2=CGRectMake(20, 150, screenWidth -40, 50.0);
    //设置属性
    [[UIColor yellowColor]set];
    UIRectFill(rect);
    
    [[UIColor redColor] setStroke];
    UIRectFrame(rect2);


}

#pragma mark --绘制椭圆
-(void)drawEllipse:(CGContextRef)context{
    //添加对象,绘制椭圆（圆形）的过程也是先创建一个矩形
    CGRect rect=CGRectMake(50, 200, 50.0,50);
    CGContextAddEllipseInRect(context, rect);
    //设置属性
    [[UIColor purpleColor]set];
    //绘制
    CGContextDrawPath(context, kCGPathFillStroke);
}

#pragma mark -- 绘制弧度
-(void)drawArc:(CGContextRef)context{
    /*添加弧形对象
     x:中心点x坐标
     y:中心点y坐标
     radius:半径
     startAngle:起始弧度
     endAngle:终止弧度
     closewise:是否逆时针绘制，0则顺时针绘制
     */
    CGContextAddArc(context, 150, 220, 25, 0.0, M_PI_2, 1);
    
    //设置属性
    [[UIColor yellowColor]set];
    
    //绘制
    CGContextDrawPath(context, kCGPathFillStroke);
}

#pragma mark -- 划线
-(void)drawLine{

    // 获取图形上下文对象
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    
  

    // 创建路径对象
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, nil, 50, 50);
    CGPathAddLineToPoint(path, nil, 300, 200);
    CGPathAddLineToPoint(path, nil, 100, 200);
    
    
    
    // 添加到图像上下文
    CGContextAddPath(context, path);
    
    
    // 设置图像上下文状态属性
    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1);
    CGContextSetRGBFillColor(context, 0, 1.0, 0, 1);
    CGContextSetLineWidth(context, 2.0);
    
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    
    CGFloat lengths[2] = {18,9};
    CGContextSetLineDash(context, 0, lengths, 2);
    
    
    CGColorRef color = [UIColor grayColor].CGColor;
    
    CGContextSetShadowWithColor(context, CGSizeMake(2, 2), 0.8, color);
    
    CGContextDrawPath(context, kCGPathFillStroke);
    CGPathRelease(path);
    
    
    //    CGContextRef context = UIGraphicsGetCurrentContext();
    //
    //    CGContextMoveToPoint(context, 50, 50);
    //    CGContextAddLineToPoint(context, 50, 100);
    //    CGContextAddLineToPoint(context, 300, 100);
    //
    //    CGContextClosePath(context);
    //
    //    [[UIColor redColor] setStroke];
    //    [[UIColor greenColor]setFill];
    //
    //    CGContextDrawPath(context, kCGPathFillStroke);

}

/*
 Only override drawRect: if you perform custom drawing.
 An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
     Drawing code
}
*/

@end
