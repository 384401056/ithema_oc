//
//  Person.h
//  01-ARC的基本使用
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;

@interface Person : NSObject

@property (nonatomic,strong) Dog *dog;
//@property (nonatomic,week) Dog *dog;
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int age;

@end
