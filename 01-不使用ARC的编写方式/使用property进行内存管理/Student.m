//
//  Student.m
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Student.h"
#import "Book.h"

@implementation Student

//在.h文件中使用@property声明的属性值会自动生成set和get方法，不需要再写。属性名自动加上下划线。

//- (void)setBook:(Book *)book
//{
//    if (_book != book)
//    {
//        [_book release];
//
//        _book = [book retain];
//    }
//}

- (void)dealloc
{
    [_book release];
    [_name release];
    NSLog(@"Stdudent对象被回收了");
    [super dealloc];
}

@end
