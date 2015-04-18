//
//  main.m
//  17-格式化日期
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    /*格式化日期操作
     NSDate * date = [NSDate date];
     
     //表示格式化日期对象
     NSDateFormatter * f = [[NSDateFormatter alloc] init];
     
     [f setDateFormat:@"yyyy-MM-dd hh:mm:ss"];//2014/03/21
     
     //把格式与我们的日期关联起来
     NSString * str = [f stringFromDate:date];
     NSLog(@"str %@",str);
     */
    
    //把字符串转换成日期
    /*
     NSString * str = @"2014/03/20";
     
     NSDateFormatter * f = [[NSDateFormatter alloc] init];
     [f setDateFormat:@"yyyy/MM/dd"];
     NSDate * date = [f dateFromString:str];
     NSLog(@"date %@",date);
     */
    
    //处理时区问题
    
    NSDate * newDate = [NSDate date];
    
    NSDateFormatter * f = [[NSDateFormatter alloc] init];
    [f setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSString * str = [f stringFromDate:newDate];
    //设置时差计算方法 //GTM
    [f setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    
    NSLog(@"%@",str);
    
    
    
    return 0;
}

