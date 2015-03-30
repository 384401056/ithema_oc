//
//  Book.m
//  OC-01
//
//  Created by Gaoyanbin on 15-3-25.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Book.h"

@implementation Book
- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name;
{
    return _name;
}

- (void)dealloc
{
    NSLog(@"Book对象被回收了....");
    
    [super dealloc];
}
@end
