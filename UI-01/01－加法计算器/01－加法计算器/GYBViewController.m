//
//  GYBViewController.m
//  01－加法计算器
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GYBViewController.h"

@interface GYBViewController ()

@end

@implementation GYBViewController

- (void)ButtonClick
{
    //1.获取两个文本框的值。
    NSString *text1 = self.num1.text;
    NSString *text2 = [self.num2 text];
    
    //2.将文本转为数字。
    int num1 = text1.intValue;
    int num2 = [text2 intValue];
    
    //3.对两数相加并显示。
    int sum = num1+num2;
    self.sum.text = [NSString stringWithFormat:@"%d",sum];
    
}

@end
