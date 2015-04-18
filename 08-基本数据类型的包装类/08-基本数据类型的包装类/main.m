//
//  main.m
//  08-基本数据类型的包装类
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    
    //集合中,不能存储基本数据类型,如果你想要把基本数据类型存储到数组,集合中,就必须把它转换成基本数据类型的包装类
    //int float double char
    int a = 10;
    //        [NSString stringWithFormat:@"%d",a];
    
    //1.使用NSNumber 包装  int数据类型
    NSNumber * number1 = [NSNumber numberWithInt:a];
    NSLog(@"%@",number1);
    
    //2.直接转换成字符串
    NSString * strInt = [number1 stringValue];
    NSLog(@"strInt %@",strInt);
    
    //3.float包装成NSNumber
    NSNumber * number2 = [NSNumber numberWithFloat:98.98];
    NSLog(@"number2 %@",[number2 stringValue]);
    
    //4.包装类转换成基本数据类型
    
    int b  = [number1 intValue];
    NSLog(@"%d",b);
    
    return 0;
}

