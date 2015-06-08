//
//  ViewController.m
//  09-UITableView英雄盟
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"
#import "GBHero.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>

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


#pragma mark - tableVeiw数据源方法

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
//        NSLog(@"-----[UITableViewCell alloc]-----");
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


#pragma mark - tableview代理方法
/*
 选中cell后调用此方法
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    int row = indexPath.row;//获取当前行号。
    GBHero *hero = self.heros[row];//通过行号取出数据。

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"修改数据" message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;//设置对话框样式。
    [alert textFieldAtIndex:0].text = hero.name; //获取第0个UITextField对象，并对其设置值。
    
    alert.tag = row;//使用AlertView的Tag来存储行号。以便在AlertView按钮点击方法中使用。
    
    [alert show];
    
}

/*
 取消选中cell后调用此方法。
 */
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}



#pragma mark -AlertView代理方法

/*
 UIAlertView中的按钮点击方法
 */
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    int row = alertView.tag;
    GBHero *hero = self.heros[row];
    
    switch (buttonIndex) {
        case 0://点击取消按钮。
            return;
            break;
            
        case 1://点击确定按钮。
            hero.name = [alertView textFieldAtIndex:0].text;//修改模型数据
    
            //更新整个tableView。性能不好。
            //这种更新方式，会让tableView重新调用数据源代理的方法。
//            [self.tableView reloadData];
            
            //只更新某几行数据,要传入一个NSIndexPath的值，所以要把row重新封装成NSIndexPath.
            NSIndexPath *path = [NSIndexPath indexPathForRow:row inSection:0];
            [self.tableView reloadRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationMiddle];//这个方法可以加动画效果。
            break;
    }

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











