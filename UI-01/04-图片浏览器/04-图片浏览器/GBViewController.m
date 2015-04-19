//
//  GBViewController.m
//  04-图片浏览器
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lb_title;
@property (weak, nonatomic) IBOutlet UILabel *lb_text;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UIButton *prevBtn;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

@property (nonatomic,assign) int index;

@property (nonatomic,strong) NSArray *imageData;

- (IBAction)btn_right;

- (IBAction)btn_left;

- (void)changeDate;

@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//    self.index = 0;
    [self changeDate];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)btn_right
{
    self.index++;
    [self changeDate];
    
    
}

- (IBAction)btn_left
{
    
    self.index--;
    [self changeDate];
    
}

- (void)changeDate
{
    //显示图片标题。
    self.lb_title.text = [NSString stringWithFormat:@"%d/%d",self.index+1,self.imageData.count];
    
    NSDictionary *dictionary = self.imageData[self.index];
    
    //显示图片和描述
    self.image.image = [UIImage imageNamed:dictionary[@"icon"]];
    self.lb_text.text = dictionary[@"text"];
    
    //改变按钮状态。
    self.prevBtn.enabled = (self.index != 0);
    self.nextBtn.enabled = (self.index != self.imageData.count-1);
    
}


//重写imageData的get方法。
- (NSArray *)imageData
{
    //如果为空则获取数据。
    if(_imageData == nil)
    {
        //获取资源文件包
        NSBundle *bundle = [NSBundle mainBundle];
        //获取资源文件包内指定文件的路径。
        NSString *path = [bundle pathForResource:@"images" ofType:@"plist"];
        
        _imageData =  [NSArray arrayWithContentsOfFile:path];
    }
    
    return _imageData;
}

@end
















