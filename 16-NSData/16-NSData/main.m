//
//  main.m
//  16-NSData
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //音频文件,文本文件,视频文件就必须使用NSData数据类
    /*
     NSString * str = @"www.itcast.cn";
     NSError * error;
     [str writeToFile:@"/Users/aplle/Desktop/text.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
     */
    /*
     NSString * path = @"/Users/aplle/Desktop/text.txt";
     //把目标文件加载到内存中.
     //NSData 是不可变长度的Data类型,只能够通过一次加载完成所有的数据
     NSData * data = [NSData dataWithContentsOfFile:path];
     
     NSLog(@"data length %ld",data.length);
     NSString * pathTo = @"/Users/aplle/Desktop/nextext.txt";
     //把加载到内存中的文件,写入到指定的位置
     BOOL isWriteSuccess = [data writeToFile:pathTo atomically:YES];
     
     if (isWriteSuccess)
     {
     NSLog(@"写入成功");
     }
     else
     {
     NSLog(@"写入失败");
     }
     */
    
    //当需要把多个NSData数据拼接成一个数据存储的时候,就要想到使用NSMutableData这个类型
    NSString * str1 = @"好好学习";
    NSString * str2 = @"天天向上";
    NSString * str3 = @"今天休息";
    
    NSMutableData * muData = [[NSMutableData alloc] init];
    
    NSData * d1 = [str1 dataUsingEncoding:NSUTF8StringEncoding];
    NSData * d2 = [str2 dataUsingEncoding:NSUTF8StringEncoding];
    NSData * d3 = [str3 dataUsingEncoding:NSUTF8StringEncoding];
    
    //appendData 能够把nsdata对象加入到 muData对象中
    [muData appendData:d1];
    [muData appendData:d2];
    [muData appendData:d3];
    
    NSString * path = @"/Users/aplle/Desktop/传智播客校训.txt";
    //NSMutableData是继承至NSData的所以可以调用writeToFile 把数据写入到一个指定的目录下
    BOOL iswriteSucess = [muData writeToFile:path atomically:YES];
    if (iswriteSucess)
    {
        NSLog(@"创建成功");
    }
    else
    {
        NSLog(@"创建失败");
    }
    
    
    
    
    return 0;
}

