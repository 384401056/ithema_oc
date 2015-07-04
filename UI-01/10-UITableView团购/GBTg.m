//
//  GBTg.m
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "GBTg.h"

@implementation GBTg

- (instancetype) initWithDict:(NSDictionary *)dict
{
    //如果self存在(不为空)。
    if (self =[super init]){
        //使用setValuesForKeysWithDictionary时要注意。模型的成员变量名要与字典中的key一一对应。
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+ (instancetype) tgWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end
