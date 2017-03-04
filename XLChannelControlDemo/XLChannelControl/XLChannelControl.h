//
//  XLChannelControl.h
//  XLChannelControlDemo
//
//  Created by MengXianLiang on 2017/3/3.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ChannelBlock)(NSArray *inUseTitles,NSArray *unUseTitles);

@interface XLChannelControl : NSObject

+(XLChannelControl*)shareControl;

-(void)showChannelViewWithInUseTitles:(NSArray*)inUseTitles unUseTitles:(NSArray*)unUseTitles finish:(ChannelBlock)block;

@end
