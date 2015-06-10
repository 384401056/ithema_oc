//
//  GBViewController.m
//  04-QQ登录作业
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()

@property (weak, nonatomic) IBOutlet UITextField *tf_name;

@property (weak, nonatomic) IBOutlet UITextField *tf_pwd;


- (IBAction)login:(UIButton *)sender;


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

- (IBAction)login:(UIButton *)sender {

    NSLog(@"QQ:%@,密码:%@",self.tf_name.text,self.tf_pwd.text);
    [self.view endEditing:YES];
}
@end









