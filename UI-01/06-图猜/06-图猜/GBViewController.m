//
//  GBViewController.m
//  06-图猜
//
//  Created by Gaoyanbin on 15-4-26.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"
#import "GBQuestion.h"

@interface GBViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numTitle;
@property (weak, nonatomic) IBOutlet UILabel *textTitle;
@property (weak, nonatomic) IBOutlet UIButton *btnImage;
@property (weak, nonatomic) IBOutlet UIButton *btn_next;

@property (nonatomic,strong) NSArray *questions;
@property (nonatomic,assign) int index;

- (IBAction)tip;
- (IBAction)help;
- (IBAction)zoom;
- (IBAction)next;

@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.index = -1;
    [self next];
    
}


- (IBAction)tip {
}

- (IBAction)help {
}

- (IBAction)zoom {
}

/**
 *下一题
 */
- (IBAction)next {
    
    //1.增加索引
    self.index++;
    //2.从questions中取出模型。
    GBQuestion *question = self.questions[self.index];
    
    //3.设置控件的数据。
    self.numTitle.text = [NSString stringWithFormat:@"%d/%d",self.index+1,self.questions.count];
    self.textTitle.text = question.title;
    [self.btnImage setImage:[UIImage imageNamed:question.icon] forState:UIControlStateNormal];
    
    //4.判断按钮是否可点击。
    [self.btn_next setEnabled:self.index != self.questions.count-1];
    //self.btn_next.enabled = self.index!=self.questions.count-1; //与上一行作用一致。
}

/**
 在questions的get方法中实现数据的懒加载。
 */
- (NSArray *)questions{
    if(_questions == nil){
        
        //1.加载question.plist文件
        //1.1获取资源文件的路径。(通过NSBundle)
        NSString *path = [[NSBundle mainBundle] pathForResource:@"questions" ofType:@"plist"];
        //1.2通过文件得到字典的数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        //2.遍历数组，将数据转为模型。
        NSMutableArray *questionArray = [NSMutableArray array];//新建一个可变长度的数组。
        for (NSDictionary *item in dictArray) {
            GBQuestion *question = [[GBQuestion alloc] init];//将字典数组转为模型的过程可以放到GBquestion初始化中去。
            question.title = item[@"title"];
            question.answer = item[@"answer"];
            question.icon = item[@"icon"];
            question.options = item[@"options"];
            
            [questionArray addObject:question];//将模型对象加入数组中。
        }
        _questions = questionArray;
    }
    
    return _questions;
}

@end













