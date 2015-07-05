//
//  GBStatusCell.h
//  11-UITableView微博
//
//  Created by GaoBin on 15-7-5.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GBStatusFrame;

@interface GBStatusCell : UITableViewCell

@property (strong,nonatomic) GBStatusFrame *statusFrame; //数据模型

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
