//
//  ViewController.m
//  09-UITableView英雄盟
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"
#import "GBHero.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic) NSArray *heros;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    //让最后一行，全部显示出来。在ScrollVeiw的最后加一些留白。
    self.tableView.contentInset = UIEdgeInsetsMake(10, 0, 25, 0);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.heros.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GBHero *hero = self.heros[indexPath.row];
    
    static NSString *Id = @"heroCell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Id];

    if(cell==nil){

        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Id];
        NSLog(@"-----[UITableViewCell alloc]-----");
    }

    //显示数据。
    cell.textLabel.text = hero.name;
    cell.detailTextLabel.text = hero.intro;
    cell.imageView.image = [UIImage imageNamed:hero.icon];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
}



/**
 heros数据的懒加载。
 */
- (NSArray *)heros{
    
    if(_heros == nil){
        // 1.获得plist的全路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"heros.plist" ofType:nil];
        // 2.加载数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        // 3.将dictArray里面的所有字典转成模型对象,放到新的数组中
        NSMutableArray *herosArray = [NSMutableArray array];
        
        for (NSDictionary *dict in dictArray) {
            // 3.1.创建模型对象
            GBHero *hero = [GBHero herosWithDict:dict];
            // 3.2.添加模型对象到数组中
            [herosArray addObject:hero];
        }
        
        // 4.赋值
        _heros = herosArray;
    }
    
    return _heros;
    
}


@end











