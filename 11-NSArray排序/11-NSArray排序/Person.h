//
//  Person.h
//  11-NSArray排序
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic,strong) NSString * name;
@property (nonatomic,assign) int age;
@property (nonatomic,strong) NSString * year;

- initWithName:(NSString *)name andAge:(int)age andYear:(NSString *)year;

@end
