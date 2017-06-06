//
//  myTextAttachment.m
//  项目中的图片
//
//  Created by ls on 2017/6/5.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//

#import "myTextAttachment.h"

@implementation myTextAttachment


-(CGRect)attachmentBoundsForTextContainer:(NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex{

    return CGRectMake(0, -5, lineFrag.size.height, lineFrag.size.height);

}



@end
