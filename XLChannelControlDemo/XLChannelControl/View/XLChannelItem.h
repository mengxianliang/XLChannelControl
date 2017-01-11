//
//  XLChannelItem.h
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//  每一个可以被拖动的卡片

#import <UIKit/UIKit.h>

@interface XLChannelItem : UIView

//标题
@property (copy,nonatomic) NSString *title;

//是否是占位
@property (assign,nonatomic) BOOL isPlaceholder;

@end
