//
//  工作问题记录.h
//  工作问题记录
//
//  Created by ls on 2017/7/7.
//  Copyright © 2017年 yibuyimiao. All rights reserved.
//
 /* 1 百度云文档阅读器
  
    传参数不对
   
  NSDictionary *paraDic = @{@"BDocPlayerSDKeyDocID" : detailModel.baiDuDocID,@"BDocPlayerSDKeyDocTitle" : detailModel.docName,@"BDocPlayerSDKeyTotalPageNum" : @"1",@"BDocPlayerSDKeyToken" : @"TOKEN",@"BDocPlayerSDKeyHost" : @"BCEDOC",@"BDocPlayerSDKeyDocType" : detailModel.baiDuDocType};

  和
  NSDictionary* parameters = @{
  BDocPlayerSDKeyDocID: detailModel.baiDuDocID,
  BDocPlayerSDKeyToken: @"TOKEN",
  BDocPlayerSDKeyHost: @"BCEDOC",
  BDocPlayerSDKeyDocType: detailModel.baiDuDocType,
  BDocPlayerSDKeyTotalPageNum: @"1",
  BDocPlayerSDKeyDocTitle: detailModel.docName,
  BDocPlayerSDKeyPageNumber : @(0)
  };

  的区别是 key不同 ，上面key 是 @“”里的字符串 ；而下面是文档中的 BCE_EXTERN NSString * const BDocPlayerSDKeyDocID;
  
  
  
  
  */
