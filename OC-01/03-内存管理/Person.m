//
//  Person.m
//  OC-01
//
//  Created by Gaoyanbin on 15-3-25.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setBook:(Book *)book
{
    //对象要引用已经创建出的对象，要对后者进行一个 retain 操作对计数器加1
    _book = [book retain];
}

- (Book *)book
{
    return _book;
}

- (void)dealloc
{
    NSLog(@"Person对象被回收了....");
    
    //在Pserson对象回收前，对他的_book进行回收。上面有 retain 这里就有 release。
    [_book release];
    
    [super dealloc];
}
@end
