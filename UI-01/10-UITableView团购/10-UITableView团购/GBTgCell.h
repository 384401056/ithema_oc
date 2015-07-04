//
//  GBTgCell.h
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GBTg;

@interface GBTgCell : UITableViewCell
@property (strong,nonatomic) GBTg *tg;


+ (instancetype) cellWithTableView:(UITableView *)tableView;

@end

