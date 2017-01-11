//
//  XLChannelViewController.m
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "XLChannelViewController.h"
#import "XLChannelView.h"

@interface XLChannelViewController ()
{
    VoidBlock _backBlock;
}
@end

@implementation XLChannelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"频道定制";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(backMethod)];
    
    XLChannelView *menu = [[XLChannelView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64)];
    [self.view addSubview:menu];
    
}

-(void)addBackBlock:(VoidBlock)block
{
    _backBlock = block;
}

-(void)backMethod
{
    //回调返回block
    if (_backBlock) {_backBlock();}
    //返回
    [self dismissViewControllerAnimated:true completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
