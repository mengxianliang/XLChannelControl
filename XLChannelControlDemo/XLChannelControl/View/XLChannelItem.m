//
//  XLChannelItem.m
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

#define BorderColor  [UIColor colorWithRed:227/255.0f green:227/255.0f blue:227/255.0f alpha:1]
#define PlaceholderColor [UIColor colorWithRed:241/255.0f green:241/255.0f blue:241/255.0f alpha:1]
#define TextColor [UIColor colorWithRed:40/255.0f green:40/255.0f blue:40/255.0f alpha:1]

#import "XLChannelItem.h"

@interface XLChannelItem ()
{
    UILabel *_textLabel;
}
@end

@implementation XLChannelItem

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI
{
    self.userInteractionEnabled = true;
    self.layer.cornerRadius = 5.0f;
    self.layer.borderWidth = 1.0f;
    self.backgroundColor = [UIColor whiteColor];
    
    _textLabel = [UILabel new];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    _textLabel.textColor = TextColor;
    _textLabel.font = [UIFont systemFontOfSize:15];
    _textLabel.adjustsFontSizeToFitWidth = true;
    _textLabel.userInteractionEnabled = true;
    [self addSubview:_textLabel];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _textLabel.frame = self.bounds;
    if (_isPlaceholder) {
        self.layer.borderColor = PlaceholderColor.CGColor;
        _textLabel.textColor = [UIColor colorWithWhite:0.5 alpha:1];
    }else{
        self.layer.borderColor = BorderColor.CGColor;
        _textLabel.textColor = TextColor;
    }
}

-(void)setTitle:(NSString *)title
{
    _title = title;
    _textLabel.text = title;
}

@end
