//
//  ViewController.m
//  项目中的图片
//
//  Created by ls on 2017/6/1.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+extion.h"
#import "KCView.h"
#import "myTextAttachment.h"
#import <CoreText/CoreText.h>

#define  screenWidth  ([UIScreen mainScreen].bounds.size.width)

#define  screenHeight  ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *practiceDemo;

@property (weak, nonatomic) IBOutlet UIImageView *topImage;

@property (weak, nonatomic) IBOutlet UILabel *attributLb;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lbHeight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self demo6];
    // [self demo5];
    
    
    // [self demo3];
    // [self demo2];
    
    
}

#pragma mark -- 图片里面添加图片label中的字体

-(void)demo6{
    
    // 下面注释两种计算的高度和文字显示的高度有差别 : 使用ceil(titleSize.height)解决
//    NSString *titleContent = @"亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务。亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务                                                                  亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务。亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务";
//     NSString *titleContent = @"亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务。亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务\n亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务。亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务";
    
     NSString *titleContent = @"亲，eddfde欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务。亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务\n亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务。亲，欢迎您通过以下方式与我们的营销顾问取得联系，交流您再营销推广工作中遇到的问题，营销顾问将免费为您提供咨询服务";
    //self.attributLb.font = [UIFont systemFontOfSize:14];
    //self.attributLb.text = titleContent;
    self.attributLb.numberOfLines = 0;
   // self.attributLb.textColor = [UIColor lightGrayColor];
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc]init];
    paragraph.lineSpacing = 8;
    paragraph.paragraphSpacing = 10;
    paragraph.alignment = NSTextAlignmentLeft;
    paragraph.firstLineHeadIndent = 20;
    paragraph.headIndent = 10;
    //paragraph.tailIndent= 10这个现象有问题
    paragraph.tailIndent = -5;
   // paragraph.lineHeightMultiple = 1.5;
    //paragraph.paragraphSpacingBefore = 30;
    
    //UIFont *baseFont =  [UIFont fontWithName:@"Helvetica-BoldOblique" size:20];
    
    UIFont * baseFont = [UIFont systemFontOfSize:20 weight:0];
   // UIFont *italicFont = GetVariationOfFontWithTrait(baseFont,kCTFontTraitItalic);
    //NSKernAttributeName:@1.5f  设置字间距
    NSDictionary *dic =@{NSFontAttributeName:baseFont,NSParagraphStyleAttributeName:paragraph,NSKernAttributeName:@1.5f};
    
    // 设置字体的倾斜 字母正常 汉字不倾斜
    NSMutableAttributedString *mutableStr = [[NSMutableAttributedString alloc]initWithString:titleContent attributes:dic];
    
 //  [mutableStr addAttribute:NSFontAttributeName value:italicFont range:[titleContent rangeOfString:@"eddfde"]];
   
   // 重复字查询不到范围 : 设置描边颜色的同时要设置描边宽度
   [mutableStr addAttribute:NSStrokeColorAttributeName value:[UIColor blueColor] range:[titleContent rangeOfString:@"欢迎您"]];
   [mutableStr addAttribute:NSStrokeWidthAttributeName value:@2 range:[titleContent rangeOfString:@"欢迎您"]];
    
//    [mutableStr addAttribute:NSStrokeColorAttributeName value:[UIColor blueColor] range:NSMakeRange(5, 10)];
    [mutableStr addAttribute:NSForegroundColorAttributeName
                       value:[UIColor redColor]
                       range:[titleContent rangeOfString:@"营销顾问"]];
    // 文字下面加线
    [mutableStr addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(20, 5)];
    [mutableStr addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleDouble) range:NSMakeRange(30, 6)];
    [mutableStr addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleThick) range:NSMakeRange(10, 5)];
    [mutableStr addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:NSMakeRange(40, 5)];
    
    
    
    self.attributLb.attributedText = mutableStr;
    
    CGSize titleSize = [titleContent boundingRectWithSize:CGSizeMake(screenWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic  context:nil].size;
    
    self.lbHeight.constant =ceil(titleSize.height) ;
    
    
//    CGAffineTransform matrix = CGAffineTransformMake(1, 0, tanf(-15 * (CGFloat)M_PI / 180), 1, 0, 0);
//    self.attributLb.transform = matrix;
    
    
    

    NSArray *imageArray = [NSArray arrayWithObjects:[UIImage imageNamed:@"zou.png"],[UIImage imageNamed:@"zou.png"], [UIImage imageNamed:@"zou.png"],[UIImage imageNamed:@"zou.png"],nil];
    
    NSArray *imgPointArray = [NSArray arrayWithObjects:@"0",@"0",@"0",@"35",@"35",@"0",@"35",@"35", nil];
    
    UIImage *Image = [self margedImageArr:imageArray pointArr:imgPointArray size:CGSizeMake(self.topImage.frame.size.width, self.topImage.frame.size.height)];
  
    self.topImage.image = Image;

}
#pragma mark -- 获取斜体
UIFont * GetVariationOfFontWithTrait(UIFont *baseFont,
                                     CTFontSymbolicTraits trait) {
    CGFloat fontSize = [baseFont pointSize];
    CFStringRef
    baseFontName = (__bridge CFStringRef)[baseFont fontName];
    CTFontRef baseCTFont = CTFontCreateWithName(baseFontName,
                                                fontSize, NULL);
    CTFontRef ctFont =
    CTFontCreateCopyWithSymbolicTraits(baseCTFont, 0, NULL,
                                       trait, trait);
    NSString *variantFontName =
    CFBridgingRelease(CTFontCopyName(ctFont,
                                     kCTFontPostScriptNameKey));
    
    UIFont *variantFont = [UIFont fontWithName:variantFontName
                                          size:fontSize];
    CFRelease(ctFont);
    CFRelease(baseCTFont);
    return variantFont;
};


-(UIImage*)margedImageArr:(NSArray*)imageArr pointArr:(NSArray *)imgPointArray size:(CGSize)size{

    UIGraphicsBeginImageContext(size);
    
    int i = 0;
    
    for (UIImage *img in imageArr) {
        
        [img drawInRect:CGRectMake([[imgPointArray objectAtIndex:i] floatValue], [[imgPointArray objectAtIndex:i+1] floatValue], (size.width -5)/2, (size.width-5)/2)];
        i += 2;
        
    }
    
    CGImageRef newMergeImg = CGImageCreateWithImageInRect(UIGraphicsGetImageFromCurrentImageContext().CGImage, CGRectMake(0, 0, size.width, size.height));
    
    UIGraphicsEndImageContext();
    
    if (newMergeImg == nil) {
        return nil;
    }

    UIImage *image = [UIImage imageWithCGImage:newMergeImg];
    
    return image;
}

#pragma mark -- 富文本

-(void)demo5{

    NSString *message = @"往前跑一步[icon]，看看自己想要的，自己思考的";
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:message attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16]}];
    
    // 图片转换为NSAttributedString 填到文字中
    myTextAttachment *attachment = [[myTextAttachment alloc]init];
    UIImage *image = [UIImage imageNamed:@"zou.png"]; 
    attachment.image = image;
    NSAttributedString *text = [NSAttributedString attributedStringWithAttachment:attachment];
    
    
    NSRange range = [[str string] rangeOfString:@"[icon]"];
    [str replaceCharactersInRange:range withAttributedString:text];
    
    self.attributLb.attributedText = str;

}



#pragma 绘图

-(void)demo4{

    KCView *view = [[KCView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:view];
}

#pragma mark -- 添加水印

-(void)demo3{

    UIImage* image = [UIImage waterMakeImage:@"空白页.png" underImage:@"luyueqi.png"];
    //luyueqi.png
    UIImageView* imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame = CGRectMake(0 ,0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width);
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
