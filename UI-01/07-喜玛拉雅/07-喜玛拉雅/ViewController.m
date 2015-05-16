//
//  ViewController.m
//  07-喜玛拉雅
//
//  Created by GaoBin on 15-5-8.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *lastBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置滚动
    
//    CGFloat contentH = self.lastBtn.frame.origin.y + self.lastBtn.frame.size.height + 10;
    CGFloat contentH	 = CGRectGetMaxY(self.lastBtn.frame)+10;//获取某个控件的最大y值。
    self.scrollView.contentSize = CGSizeMake(0, contentH); //设置滚动视图的内容长度。
    
    //增加额外的滚动区域。(当scrollView停住时，上下左右的留白。)
    self.scrollView.contentInset = UIEdgeInsetsMake(54, 0, 44, 0);
    
    //设置滚动条的初始位置。
    self.scrollView.contentOffset = CGPointMake(0, -54);
}
	

@end
