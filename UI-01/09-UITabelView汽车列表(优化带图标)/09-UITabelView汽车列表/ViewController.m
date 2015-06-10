//
//  ViewController.m
//  09-UITabelView汽车列表
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"
#import "GBCarGroup.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSArray *groups;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    //设置分隔线的颜色。
//    self.tableView.separatorColor = [UIColor brownColor];
    //通过RGB颜色来设置。参数值是与255.0相除的百分比值。
//    self.tableView.separatorColor = [UIColor colorWithRed:0/255.0 green:225/225.0 blue:0/255.0 alpha:100/255.0];
    //设置分隔线样式。
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    //设置Table的表头View
//    self.tableView.tableHeaderView = [[UISwitch alloc] init];
    //设置Table的表尾View
//    self.tableView.tableFooterView = [[UISwitch alloc] init];
}


#pragma mark UITableView数据源方法。
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
    
    static NSString *Id = @"carCell";
    
    GBCarGroup *cg = self.groups[indexPath.section];
    
    //根据Identifier从缓存池中取出一个cell。
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Id];
    
    //如何没有取到cell，说明缓存池为空，则生成一个。并设置reuseIdentifier.
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Id];
//        NSLog(@"-----alloc Cell----%@--------%p",cg.cars[indexPath.row],cell);
    }

    cell.textLabel.text = cg.cars[indexPath.row];
    
    //设置Cell的右边指示器的类型。
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.accessoryView = [[UISwitch alloc] init];//也可设置为其它控件。
    
    //设置背景色，或背景View.
//    UIView *bgview = [[UIView alloc] init];
//    bgview.backgroundColor = [UIColor blueColor];
//    cell.backgroundView = bgview;
    
    //设置选中后的背景色，或背景View.
//    UIView *selectView = [[UIView alloc] init];
//    selectView.backgroundColor = [UIColor blueColor];
//    cell.selectedBackgroundView = selectView;
    
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



#pragma mark UITableView代理方法。

/*
 设置行高
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}

/*
 设置每组的Header高度。
 */
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;
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
