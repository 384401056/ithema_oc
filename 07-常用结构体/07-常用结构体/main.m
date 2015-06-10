//
//  main.m
//  07-常用结构体
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //1.创建一个NSRange结构体 表示范围
    NSRange range = {4,5};
    NSRange range2 = NSMakeRange(4, 5);
    NSString * strRange = NSStringFromRange(range);
    NSLog(@"strRange %@",strRange);
    
    //2.NSSize 等同于 CGSize 有两个值组成 weight表示宽度 height高度
    NSSize  size = {21,19};
    NSSize  size2 = NSMakeSize(21, 19);
    NSString *strSize =  NSStringFromSize(size2);
    NSLog(@"strSize %@",strSize);
    
    //3.NSPoint 等同CGPoint 表示一个点的坐标位置
    NSPoint point = {20,40};
    NSPoint point2 = NSMakePoint(20, 40);
    NSString * strPoint = NSStringFromPoint(point);
    NSLog(@"strPoint %@",strPoint);
    
    //4.NSRect
    NSRect rect = {40,60,100,200};
    NSRect rect2 = NSMakeRect(0, 10, 100, 100);
    NSString * strRect = NSStringFromRect(rect);
    NSLog(@"strRect %@",strRect);

    return 0;
} 

