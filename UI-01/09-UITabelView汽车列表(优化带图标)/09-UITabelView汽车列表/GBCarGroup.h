//
//  GBCarGroup.h
//  09-UITabelView汽车列表
//
//  Created by GaoBin on 15-5-17.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBCarGroup : NSObject

@property (nonatomic,strong) NSString *title;//每组的标题
@property (nonatomic,strong) NSString *desc;//每组的描述
@property (nonatomic,strong) NSArray *cars;//每组的数据

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carGroupWithDict:(NSDictionary *)dict;
@end
