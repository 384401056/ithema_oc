//
//  GBTg.h
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBTg : NSObject

@property (copy,nonatomic) NSString *buyCount;
@property (copy,nonatomic) NSString *icon;
@property (copy,nonatomic) NSString *price;
@property (copy,nonatomic) NSString *title;


- (instancetype) initWithDict:(NSDictionary *)dict;

+ (instancetype) tgWithDict:(NSDictionary *)dict;

@end
