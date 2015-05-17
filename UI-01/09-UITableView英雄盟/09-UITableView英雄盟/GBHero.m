//
//  GBHero.m
//  09-UITableView英雄盟
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "GBHero.h"

@implementation GBHero

- (instancetype)initWithDict:(NSDictionary *)dict{
    
    if(self = [super init]){
        //从字典中获取数据到类对象。
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+ (instancetype)herosWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}


@end
