//
//  GBViewController.m
//  02-按钮的使用
//
//  Created by Gaoyanbin on 15-4-1.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()

@property (nonatomic,weak) IBOutlet UIButton *head;
@property (nonatomic,weak) IBOutlet UIButton *btn_top;
@property (nonatomic,weak) IBOutlet UIButton *btn_bottom;
@property (nonatomic,weak) IBOutlet UIButton *btn_left;
@property (nonatomic,weak) IBOutlet UIButton *btn_right;
@property (nonatomic,weak) IBOutlet UIButton *btn_minus;
@property (nonatomic,weak) IBOutlet UIButton *btn_plus;

- (IBAction)goUp;
- (IBAction)goDnow;
- (IBAction)goLeft;
- (IBAction)goRight;

- (IBAction)goMinus;
- (IBAction)goPlus;

@end

@implementation GBViewController

#pragma mark 向上移动
- (void)goUp
{
    /*在IOS开发中要注意:
     不允许修改 对象 结构体属性 的成员。
     但允许修改 对象 结构体属性
    */
    CGRect tempFrame =  self.head.frame;//取出head按钮的位置属性。
    tempFrame.origin.y -= 10;           //修改位置属性。 
    self.head.frame = tempFrame;        //将位置属性赋值给head按钮。
}


- (void)goDnow
{
    CGRect tempFrame =  self.head.frame;//取出head按钮的位置属性。
    tempFrame.origin.y += 10;           //修改位置属性。
    self.head.frame = tempFrame;        //将位置属性赋值给head按钮。
}

- (void)goLeft
{
    CGRect tempFrame =  self.head.frame;//取出head按钮的位置属性。
    tempFrame.origin.x -= 10;           //修改位置属性。
    self.head.frame = tempFrame;        //将位置属性赋值给head按钮。
}

- (void)goRight
{
    CGRect tempFrame =  self.head.frame;//取出head按钮的位置属性。
    tempFrame.origin.x += 10;           //修改位置属性。
    self.head.frame = tempFrame;        //将位置属性赋值给head按钮。
}


- (void)goMinus
{
    /*
     对height和width的修改没有效果是因为，iOS使用了 Use Autolayout.要关闭这个选项。
     */
    CGRect tempFrame =  self.head.frame;//取出head按钮的位置属性。
    tempFrame.size.height -=10;         //修改大小属性。
    tempFrame.size.width -=10;
    self.head.frame = tempFrame;        //将位置属性赋值给head按钮。}
}

-(void)goPlus
{
    CGRect tempFrame =  self.head.frame;//取出head按钮的位置属性。
    tempFrame.size.height +=10;         //修改大小属性。
    tempFrame.size.width +=10;
    self.head.frame = tempFrame;        //将位置属性赋值给head按钮。}
}

@end






















