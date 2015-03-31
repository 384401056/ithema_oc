//
//  GYBViewController.h
//  01－加法计算器
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GYBViewController : UIViewController

- (IBAction)ButtonClick;

@property (nonatomic,weak) IBOutlet UITextField *num1;

@property (nonatomic,weak) IBOutlet UITextField *num2;

@property (nonatomic,weak) IBOutlet UILabel *sum;

@end
