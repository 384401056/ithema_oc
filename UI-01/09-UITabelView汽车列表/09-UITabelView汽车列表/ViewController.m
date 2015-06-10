//
//  ViewController.m
//  09-UITabelView汽车列表
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"
#import "GBCarGroup.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tabelView;
@property (strong,nonatomic) NSArray *groups;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabelView.dataSource = self;

}

/*
 有多少个组.
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.groups.count;
}

/*
 每组有多少行。
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    GBCarGroup *cg = self.groups[section];
    return cg.cars.count;
}

/*
 每一行如何显示。
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GBCarGroup *cg = self.groups[indexPath.section];
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    cell.textLabel.text = cg.cars[indexPath.row];

    return cell;
}

/*
 每组的Title部分显示的文字.
 */
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    GBCarGroup *cg = self.groups[section];
    return cg.title;
}

/*
 每组的Footer部分显示的文字.
 */
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    GBCarGroup *cg = self.groups[section];
    return cg.desc;
}


- (NSArray *)groups{
    
    if (_groups == nil) {
        // 初始化
        
        // 1.获得plist的全路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"cars_simple.plist" ofType:nil];
        // 2.加载数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        // 3.将dictArray里面的所有字典转成模型对象,放到新的数组中
        NSMutableArray *groupArray = [NSMutableArray array];
        
        for (NSDictionary *dict in dictArray) {
            // 3.1.创建模型对象
            GBCarGroup *carGroup = [GBCarGroup carGroupWithDict:dict];
            // 3.2.添加模型对象到数组中
            [groupArray addObject:carGroup];
        }
        
        // 4.赋值
        _groups = groupArray;
    }
    return _groups;

}

@end
