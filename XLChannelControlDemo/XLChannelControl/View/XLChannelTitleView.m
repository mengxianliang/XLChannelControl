//
//  XLChannelTitleView.m
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "XLChannelTitleView.h"

@interface XLChannelTitleView ()
{
    UILabel *_titleLabel;
    UILabel *_subtitleLabel;
}
@end

@implementation XLChannelTitleView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildUI];
    }
    return self;
}

-(void)buildUI
{
    CGFloat labelWidth = self.bounds.size.width/2.0f;
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, labelWidth, self.bounds.size.height)];
    _titleLabel.textColor = [UIColor blackColor];
    [self addSubview:_titleLabel];
    
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelWidth, 0, labelWidth, self.bounds.size.height)];
    _subtitleLabel.textColor = [UIColor lightGrayColor];
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.font = [UIFont systemFontOfSize:15.0f];
    [self addSubview:_subtitleLabel];
}

-(void)setTitle:(NSString *)title
{
    _title = title;
    _titleLabel.text = title;
}

-(void)setSubTitle:(NSString *)subTitle
{
    _subTitle = subTitle;
    _subtitleLabel.text = subTitle;
}

@end
