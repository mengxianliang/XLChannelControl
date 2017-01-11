//
//  XLChannelModel.m
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "XLChannelModel.h"


@implementation XLChannelModel

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    _title = [aDecoder decodeObjectForKey:@"_title"];
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_title forKey:@"_title"];
}

@end
