//
//  main.m
//  03-NSString字符串的拼接
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //1.多个数据拼接成一个字符串
    int year = 1988;
    int month = 4;
    int day = 15;
    NSString * date = [NSString stringWithFormat:@"%d年%d月%d日",year,month,day];
    NSLog(@"date %@",date);
    NSString * address = @"昌平区,金燕龙";
    NSString * dateAndAddrss = [NSString stringWithFormat:@"%@地址:%@",date,address];
    NSLog(@"dateAndAddress %@",dateAndAddrss);
    
    //2.字符串的末尾追加新的字符
    NSString * str1 = @"www.";
    NSString * str2 = [str1 stringByAppendingString:@"itcast.cn"];
    NSLog(@"str2 %@ str1 %@",str2,str1);
    
    //3.在制定的范围追加字符串
    NSString * str3 = @"www.cn";
    NSRange range = {4,0};
    // 4 location代表的时从哪个索引开始插入,length 代表的意思可以覆盖几个字符
    NSString * str4 = [str3 stringByReplacingCharactersInRange:range withString:@"itcast."];
    NSLog(@"str4 %@",str4);
    
    //4.使用新的字符,替换原有的字符
    NSString * str5 = @"www.itcast.cn";
    NSString * str6 = [str5 stringByReplacingOccurrencesOfString:@"w" withString:@"a"];
    NSLog(@"str6 %@",str6);
    
    //5.在字符串中删除特定的某些字符 胡汉三 hhs
    NSString * str7 = @"www---.itcatst.--cn";
    NSString * str8 = [str7 stringByReplacingOccurrencesOfString:@"-" withString:@""];
    NSLog(@"str8 %@",str8);
    
    //6.去掉字符串中的空格
    NSString * str9 = @"www  .itcat  .cn";
    NSString * str10 = [str9 stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"str10 %@",str10);
    
    return 0;
}

