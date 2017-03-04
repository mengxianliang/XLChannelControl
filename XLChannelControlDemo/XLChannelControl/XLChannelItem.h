//
//  XLChannelItem.h
//  XLChannelControlDemo
//
//  Created by MengXianLiang on 2017/3/3.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLChannelItem : UICollectionViewCell
//标题
@property (copy,nonatomic) NSString *title;

//是否正在移动状态
@property (assign,nonatomic) BOOL isMoving;

@end
