//
//  GYBViewController.m
//  01－加法计算器
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GYBViewController.h"

//苹果建议把只有GYBViewController使用的属性和方法放在这个类扩展(私有扩展)中,而不是放在.h头文件中。
@interface GYBViewController ()

- (IBAction)ButtonClick;

@property (nonatomic,weak) IBOutlet UITextField *num1;

@property (nonatomic,weak) IBOutlet UITextField *num2;

@property (nonatomic,weak) IBOutlet UILabel *sum;

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
    
    //4.点击计算按钮后退出键盘。
    //>1.让能叫出键盘的控件辞掉第一响应者。
//    [self.num1 resignFirstResponder];
//    [self.num2 resignFirstResponder];
    //>2.通过View来退出键盘。
    [self.view endEditing:true];
}

@end
