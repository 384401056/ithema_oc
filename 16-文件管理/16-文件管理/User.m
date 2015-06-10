//
//  User.m
//  16-文件管理
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "User.h"

@implementation User

//静态变量,整个程序运行完成的时候才会被释放掉,mian函数运行完成
static User * instance = nil;

+ (User *)defaultUser
{
    //    return [[self alloc] init];
    if (instance == nil)
    {
        instance = [[self alloc] init];
    }
    return instance;
    
}

@end
