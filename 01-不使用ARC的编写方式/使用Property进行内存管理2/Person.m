//
//  Person.m
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//


#import "Person.h"

@implementation Person

- (void)dealloc
{
    [_name release];
    [super dealloc];
}

@end



