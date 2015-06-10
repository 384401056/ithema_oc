//
//  Person.m
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-30.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}

- (void)setCar:(Car *)car
{
    if(car != _car)
    {
        // 对当前正在使用的车（旧车）做一次release
        [_car release];
        // 对新车做一次retain操作
        _car = [car retain];
    }
}

- (Car *)car
{
    return _car;
}

- (void)dealloc
{
    [_car release];
    NSLog(@"%d岁的Person对象被回收了", _age);
    [super dealloc];
}

@end
