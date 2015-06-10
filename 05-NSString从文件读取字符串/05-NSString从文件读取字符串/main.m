//
//  main.m
//  05-NSString从文件读取字符串
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //要给出文件路径
    //你写入文件的时候,使用的是什么编码格式,读取的时候就要给我用什么编码格式
    NSString * path = @"/Users/gaoyanbin/Desktop/mytest.txt";
    NSError * error;
    NSString * str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    
    if (error != nil)
    {
        NSLog(@"error message %@",error);
    }
    else
    {
        NSLog(@"str content %@",str);
    }
    
    return 0;
}

