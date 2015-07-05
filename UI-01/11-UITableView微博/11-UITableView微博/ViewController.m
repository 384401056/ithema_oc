//
//  ViewController.m
//  11-UITableView微博
//
//  Created by GaoBin on 15-7-5.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"
#import "GBStatus.h"
#import "GBStatusCell.h"
#import "GBStatusFrame.h"

@interface ViewController ()

@property (strong,nonatomic) NSArray *statusFrames;//微博数据。

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.tableView.rowHeight = 400;
    
}

- (NSArray *)statusFrames{
    
    if(_statusFrames == nil){
        
        // 初始化
        // 1.获得plist的全路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
        
        // 2.加载数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        // 3.将dictArray里面的所有字典转成模型对象,放到新的数组中
        NSMutableArray *statusFrameArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            // 3.1.创建模型对象
            GBStatus *status = [GBStatus statusWithDict:dict];
            
            // 3.2.创建frame模型。
            GBStatusFrame *frame = [[GBStatusFrame alloc] init];
            frame.status = status;
            
            // 3.2.添加模型对象到数组中
            [statusFrameArray addObject:frame];
        }
        
        // 4.赋值
        _statusFrames = statusFrameArray;
    }
    
    return _statusFrames;
}

#pragma mark UITableViewControl的数据源方法

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.statusFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GBStatusCell *cell = [GBStatusCell cellWithTableView:tableView];

    cell.statusFrame  = self.statusFrames[indexPath.row];
    
    return cell;
}

/*
  动态设置行高
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //取出单个Frame对象模型
    GBStatusFrame *frame = self.statusFrames[indexPath.row];
    //返回行高。
    return frame.cellHeight;
}

@end


















