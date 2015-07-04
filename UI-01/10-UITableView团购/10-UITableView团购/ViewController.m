//
//  ViewController.m
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"
#import "GBTgCell.h"
#import "GBTg.h"
#import "GBTgFooterView.h"

@interface ViewController () <UITableViewDataSource,GBTgFooterViewDelegate>

@property (strong,nonatomic) NSMutableArray *tgs;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;//设置数据源
    
    self.tableView.rowHeight = 80;//设置统一的行高。
    
    //获取tableFooterView.
    GBTgFooterView *footerView =[GBTgFooterView footerView];
    
    //设置当前类为GBTgFooterView的代理对象。
    footerView.delegate = self;
    
    //设置tableFooterView.
    self.tableView.tableFooterView = footerView;
}

/*
 隐藏状态栏。
 */
- (BOOL)prefersStatusBarHidden
{
    return YES;
}


- (NSMutableArray *)tgs
{
    if(_tgs == nil){
        
        // 1.获得plist的全路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil];
        // 2.加载数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        // 3.将dictArray里面的所有字典转成模型对象,放到新的数组中.此数组必须为可变数组NSMutableArray。
        NSMutableArray *tgArray = [NSMutableArray array];
        
        for (NSDictionary *dict in dictArray) {
            // 3.1.创建模型对象
            GBTg *tg = [GBTg tgWithDict:dict];
            // 3.2.添加模型对象到数组中
            [tgArray addObject:tg];
        }
        
        // 4.赋值
        _tgs = tgArray;
    }
    
    return _tgs;
}


#pragma mark tableView数据源方法

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tgs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //从自定义cell类中获取cell
    GBTgCell *cell = [GBTgCell cellWithTableView:tableView];
    
    //显示数据.
    GBTg *tg = self.tgs[indexPath.row];//取出数组中的一条数据。
    
    //使用自定义cell类来显示
    cell.tg = tg;
    

    //通过tag来获取cell内部的控件。(前提是在xib中设置tag)
//    UIImageView *icon = (UIImageView *)[cell viewWithTag:10];
//    icon.image = [UIImage imageNamed:tg.icon];
    
    return cell;
}

/*
 设置行高,可根据不同的行设置不同的高度。
 */
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 60;
//}

#pragma mark GBTgFooterViewDelegate的代理方法

/*
    tgFooterView中的加载按钮被点击时执行。
 */
- (void)tgFooterViewDidClickedLoadingBtn:(GBTgFooterView *)tgFooterView
{
    //生成新数据
    for (int i=0; i<5; i++) {
        GBTg *tg = [[GBTg alloc] init];
        tg.icon = [NSString stringWithFormat:@"ad_0%d",i];
        tg.title = [NSString stringWithFormat:@"这是新加载的数据%d",i];
        tg.price = @"99999";
        tg.buyCount = @"8888";
        
        //将数据加入tableView的数组中。
        [self.tgs addObject:tg];
    }
    
    //让tableView重新加载数据。
    [self.tableView reloadData];
}

@end










