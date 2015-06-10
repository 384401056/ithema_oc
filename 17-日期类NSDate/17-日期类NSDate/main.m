//
//  main.m
//  17-日期类NSDate
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    NSDate *date = [NSDate date];
    
    NSLog(@"date = %@",date);
    
    
    NSTimeInterval secondes = 24 * 60 * 60;
    
    NSDate * now = [NSDate date];
    
    //模拟昨天 24 * 60 * 60
    NSDate * yesDay = [now addTimeInterval:-secondes];
    
    //比较两个日期是否相同
    
    BOOL isEqual = [now isEqualToDate:yesDay];
    if (isEqual)
    {
        NSLog(@"相同");
    }
    else
    {
        NSLog(@"不相同");
    }
    
    //获得两个日期中比较早的一个
    NSDate * earler = [yesDay earlierDate:now];
    NSLog(@"%@",earler);
    
    NSDate * later = [yesDay laterDate:now];
    NSLog(@"later %@",later);
    
    return 0;
}

