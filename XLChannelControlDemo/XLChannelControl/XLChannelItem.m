//
//  XLChannelItem.m
//  XLChannelControlDemo
//
//  Created by MengXianLiang on 2017/3/3.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

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
    self.layer.borderColor = [self borderColor].CGColor;
    
    _textLabel = [UILabel new];
    _textLabel.frame = self.bounds;
    _textLabel.textAlignment = NSTextAlignmentCenter;
    _textLabel.textColor = [self textColor];
    _textLabel.font = [UIFont systemFontOfSize:15];
    _textLabel.adjustsFontSizeToFitWidth = true;
    _textLabel.userInteractionEnabled = true;
    [self addSubview:_textLabel];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _textLabel.frame = self.bounds;
}

#pragma mark -
#pragma mark 配置方法

-(UIColor*)borderColor{
    return [UIColor colorWithRed:227.0/255.0f green:227.0/255.0f blue:227.0/255.0f alpha:1];
}


-(UIColor*)lightBorderColor{
    return [UIColor colorWithRed:241.0/255.0f green:241.0/255.0f blue:241.0/255.0f alpha:1];
}

-(UIColor*)textColor{
    return [UIColor colorWithRed:40.0/255.0f green:40.0/255.0f blue:40.0/255.0f alpha:1];
}

-(UIColor*)lightTextColro{
    return [UIColor colorWithWhite:0.5 alpha:1];
}



#pragma mark -
#pragma mark Setter

-(void)setTitle:(NSString *)title
{
    _title = title;
    _textLabel.text = title;
}

-(void)setIsMoving:(BOOL)isMoving
{
    _isMoving = isMoving;
    if (_isMoving) {
        self.layer.borderColor = [self lightBorderColor].CGColor;
        _textLabel.textColor = [self lightTextColro];
    }else{
        self.layer.borderColor = [self borderColor].CGColor;
        _textLabel.textColor = [self textColor];
    }
}

@end
