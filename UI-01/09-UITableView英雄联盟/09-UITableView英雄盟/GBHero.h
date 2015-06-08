//
//  GBHero.h
//  09-UITableView英雄盟
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBHero : NSObject

@property (copy,nonatomic) NSString *icon;

@property (copy,nonatomic) NSString *name;

@property (copy,nonatomic) NSString *intro;

- (instancetype) initWithDict:(NSDictionary *)dict;

+ (instancetype) herosWithDict:(NSDictionary *)dict;

@end
