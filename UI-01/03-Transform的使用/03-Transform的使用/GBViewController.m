//
//  GBViewController.m
//  03-Transform的使用
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()
- (IBAction)up;
- (IBAction)rightRotate;
- (IBAction)big;
- (IBAction)small;

@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)up {
    // 1.取得头像按钮
    UIButton *head = (UIButton *)[self.view viewWithTag:10];
    
    // 2.每次向上移动100的距离
    //    head.transform = CGAffineTransformMakeTranslation(0, -100);
    head.transform = CGAffineTransformTranslate(head.transform, 0, -100);
}

- (IBAction)rightRotate {
    // 1.取得头像按钮
    UIButton *head = (UIButton *)[self.view viewWithTag:10];
    
    // 2.向左旋转45°
    // 45  180
    // 角度是正数:顺时针, 角度是负数:逆时针
    //    head.transform = CGAffineTransformMakeRotation(-M_PI_4);
    head.transform = CGAffineTransformRotate(head.transform, M_PI_4);
}

- (IBAction)big {
    // 1.取得头像按钮
    UIButton *head = (UIButton *)[self.view viewWithTag:10];
    
    // 2.增大
    //    head.transform = CGAffineTransformMakeScale(1.5, 1.5);
    head.transform = CGAffineTransformScale(head.transform, 1.5, 1.5);
}

- (IBAction)small {
    // 1.取得头像按钮
    UIButton *head = (UIButton *)[self.view viewWithTag:10];
    
    // 2.缩小
    //    head.transform = CGAffineTransformMakeScale(1.5, 1.5);
    head.transform = CGAffineTransformScale(head.transform, 0.5, 0.5);
}
@end
