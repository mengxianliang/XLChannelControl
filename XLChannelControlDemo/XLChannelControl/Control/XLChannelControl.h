//
//  XLChannelControl.h
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XLChannelView.h"
#import "XLChannelModel.h"

typedef void(^ChannelBlock)(NSArray *channels);

typedef void(^VoidBlock)(void);

@interface XLChannelControl : NSObject

+(XLChannelControl*)shareControl;
/**
 正在使用的栏目
 */
@property (strong,nonatomic) NSMutableArray *inUseItems;
/**
 不在使用的栏目
 */
@property (strong,nonatomic) NSMutableArray *unUseItems;
/**
 显示方法 结束时返回的是正在使用中的频道集合
 */
-(void)showInViewController:(UIViewController*)vc completion:(ChannelBlock)channels;

@end
