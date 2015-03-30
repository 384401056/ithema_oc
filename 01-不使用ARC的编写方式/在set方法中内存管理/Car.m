//
//  Car.m
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-30.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)setSpeed:(int)speed
{
    _speed = speed;
}

- (int)speed
{
    return _speed;
}

- (void)dealloc
{
    NSLog(@"Car对象被回收了");
    [super dealloc];
}

@end
