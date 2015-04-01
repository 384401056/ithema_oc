//
//  GBViewController.m
//  03-通过代码来添加控件
//
//  Created by Gaoyanbin on 15-4-1.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()

@end

@implementation GBViewController

//当ViewController加载完View之后调用的方法。
- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton *btn01 = [[UIButton alloc] init];
    [self.view addSubview:btn01];               //将按钮添加到view上.
    btn01.frame = CGRectMake(0, 0, 100, 100);   //设置按钮的位置.
    btn01.backgroundColor = [UIColor greenColor];

}

@end
