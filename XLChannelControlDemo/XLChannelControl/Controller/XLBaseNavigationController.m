//
//  XLBaseNavigationController.m
//  XLChannelControlDemo
//
//  Created by Apple on 2017/1/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "XLBaseNavigationController.h"

@interface XLBaseNavigationController ()

@end

@implementation XLBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.tintColor = [UIColor blackColor];
}

-(BOOL)shouldAutorotate
{
    return false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
