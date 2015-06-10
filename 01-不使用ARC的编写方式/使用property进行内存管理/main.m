//
//  main.m
//  使用property进行内存管理
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[])
{
    Student *std = [[Student alloc] init];
    Book *b = [[Book alloc] init];
    
    
    std.book = b;
    std.name =@"Gaoyanbin";
    
    
    [b release];
    [std release];
    return 0;
}

