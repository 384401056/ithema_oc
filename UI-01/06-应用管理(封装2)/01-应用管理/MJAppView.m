//
//  MJAppView.m
//  01-应用管理
//
//  Created by apple on 14-3-26.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MJAppView.h"
#import "MJApp.h"

@interface MJAppView()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)download:(UIButton *)btn;

@end

@implementation MJAppView

//+ (instancetype)appView
//{
//    NSBundle *bundle = [NSBundle mainBundle];
//    // 读取xib文件(会创建xib中的描述的所有对象,并且按顺序放到数组中返回)
//    NSArray *objs = [bundle loadNibNamed:@"MJAppView" owner:nil options:nil];
//    return [objs lastObject];
//}
//
//+ (instancetype)appViewWithApp:(MJApp *)app
//{
//    MJAppView *appView = [self appView];
//    appView.app = app;
//    return appView;
//}

+ (instancetype)appViewWithApp:(MJApp *)app
{
    NSBundle *bundle = [NSBundle mainBundle];
    // 读取xib文件(会创建xib中的描述的所有对象,并且按顺序放到数组中返回)
    NSArray *objs = [bundle loadNibNamed:@"MJAppView" owner:nil options:nil];
    MJAppView *appView = [objs lastObject];
    appView.app = app;
    return appView;
}

+ (instancetype)appView
{
    return [self appViewWithApp:nil];
}

- (void)setApp:(MJApp *)app
{
    _app = app;
    
    // 1.设置图标
    self.iconView.image = [UIImage imageNamed:app.icon];
    
    // 2.设置名称
    self.nameLabel.text = app.name;
}

- (IBAction)download:(UIButton *)btn {
    //1.按钮点击后停用。
    btn.enabled = NO;
    
    //2.显示下载完成的提示。
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, 100, 30);
    label.center = CGPointMake(160, 240);//设置label的中间位置。这样就忽略了上面的0,0
    label.text = @"已经下载完成...";
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:12];
    label.textAlignment = NSTextAlignmentCenter;
    label.alpha = 0.0;
    //设置label为圆角.
    label.layer.cornerRadius = 10;
    label.layer.masksToBounds = YES;
    
    //3.添加label到MJAppView的父控件中。也就是ViewControl中。
    [self.superview addSubview:label];
    
    //4.动画 分为显示和关闭
    [UIView animateWithDuration:0.5 animations:^{
        label.alpha = 0.7; //显示出lable.
    } completion:^(BOOL finished) {
        
        //显示完成后，延迟一1.0移后再消失
        [UIView animateWithDuration:0.5 delay:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
            label.alpha = 0.0;//label消失
        } completion:^(BOOL finished) {
            
            [label removeFromSuperview];//label从父控件中移除。
            
        }];
        
    }];
    
}
@end














