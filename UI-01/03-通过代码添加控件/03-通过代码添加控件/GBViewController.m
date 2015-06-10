//
//  GBViewController.m
//  03-通过代码添加控件
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()

@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIButton *btn01 = [[UIButton alloc] init];
    [self.view addSubview:btn01];               //将按钮添加到view上.
    btn01.frame = CGRectMake(0, 0, 100, 100);   //设置按钮的位置和大小。
    btn01.center = CGPointMake(200, 200);//设置按钮的中心位置。
    
    UIImage * normal = [UIImage imageNamed:@"btn_01"];
    UIImage * hight = [UIImage imageNamed:@"btn_02"];
    [btn01 setBackgroundImage:normal forState:UIControlStateNormal];
    [btn01 setBackgroundImage:hight forState:UIControlStateHighlighted];
    
    //设置字体和颜色
    [btn01 setTitle:@"点我啊！" forState:UIControlStateNormal];
    [btn01 setTitle:@"点我干嘛！" forState:UIControlStateHighlighted];
    [btn01 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn01 setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    //设置监听
    [btn01 addTarget:self action:@selector(btn01Click:) forControlEvents:UIControlEventTouchUpInside];
    
}

//带参数的监听方法
- (void) btn01Click:(UIButton *)button
{
    NSLog(@"btn01:我被点击了..........%@",button);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
