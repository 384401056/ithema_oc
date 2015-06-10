//
//  main.m
//  02-NSString的判断
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NSStringExt.h"

int main(int argc, const char * argv[])
{
    //1.判断字符串是否为空。
    NSString *str = @"";
    if(str == nil || str.length==0)
    {
        NSLog(@"字符串为空.");
    }

    //2.判断字符串是否以指定的内容开始。
    NSString * str2 = @"www.qq.com";
    BOOL isPrefix = [str2 hasPrefix:@"www"];
    NSLog(@"isPrefix:%@",isPrefix?@"YES":@"NO");//用三目运算来输出BOOL.
    
    //3.判断字符串是否以指定的内容结尾。
    //在开发中常来判断文件格式。.txt .doc .avi .rmvb
    NSString *str3 = @"www.163.com.txt";
    BOOL isSuffix = [str3 hasSuffix:@".txt"];
    NSLog(@"isSuffix:%@",isSuffix?@"YES":@"NO");//用三目运算来输出BOOL.

    
    //4.判断两个字符串是否相等
    //字符串池,{ abc }
    NSString * pstr1 = @"abc";
    NSString * pstr2 = @"abc";
    NSString * pstr3 = pstr1;
    
    NSLog(@"pstr1 %p",pstr1);
    NSLog(@"pstr2 %p",pstr2);
    
    if (pstr1 == pstr2)
    {
        NSLog(@"== 判断 pstr1 与 pstr2相等");
    }
    if (pstr1 == pstr3)
    {
        NSLog(@"== 判断 pstr1 与 pstr3相等");
    }
    
    NSString * pstr5 = [NSString stringWithFormat:@"%@",@"abcd"];
    NSLog(@"pstr5 %@",pstr5);
    //使用 ==号 判断两个字符串 实际上是判断的字符串地址是否相同
    //如果地址相同的话,两个字符串相等
    NSLog(@"pstr5 %p",pstr5);
    
    if (pstr5 == pstr3)
    {
        NSLog(@"== 判断 pstr5 与 pstr1相等");
    }
    
    //在实际的开发中,切记不要使用== 号去判断两个字符串是否相等
    //
    //判断两个字符串是否相等,必须使用NSString提供给我们的方法
    //isEqualToString //abc
    //1.判断两个字符串指针地址是否相等,如果相等直接返回yes
    //2.取出字符串中的每一个字符进行比较,
    BOOL isEqual = [pstr5 isEqualToString:pstr3];
    NSLog(@"isEqual %@",isEqual ? @"YES" : @"NO" );
    
    /*
     - (void)setName:(NSString *)name
     {
     //内存管理set方法中,判断两个字符串是否相等,一定不能够使用 isEqualToString方法
     //因为,我们就是要判断两个字符串的指真地址是否相等
     if (_name != name)
     {
     [_name release];
     _name = [name reatain];
     }
     }
     
     */
    
    //6.compare 是isEqualToString的增强版本
    NSString * strTmp1 = @"abc"; //a 97 b 98
    NSString * strTmp2 = @"bbc";
    NSComparisonResult result = [strTmp1 compare:strTmp2];
    //        NSLog(@"result %d",result);
    
    switch (result) {
            
        case NSOrderedAscending:
            //如果字符串不等，且第一个不相等的字符前者比后者的Ascii值小，返回NSOrderedAscending
            NSLog(@"NSOrderedAscending");
            break;
        case NSOrderedSame:
            NSLog(@"两个字符串相等");
            break;
        case NSOrderedDescending:
            //如果字符串不等，且第一个不相等的字符前者比后者的Ascii值大，返回NSOrderedDescending
            NSLog(@"NSOrderedDescending");
            break;
            
        default:
            break;
    }
    

    //模拟isEqualToString的内部实现,定义一个分类NSStringExt,实现一个判断两字符串是否相等的方法myIsEqualToString
    //1.判断两个字符串指针地址是否相等,如果相等直接返回yes
    //2.取出字符串中的每一个字符进行比较,
    
    NSString *myStr1 = @"www.qq.com";
    NSString *myStr2 = @"www.qq.com.cn";
    BOOL myIsEqual = [myStr1 myIsEqualToString:myStr2];
    NSLog(@"isEqu %@",myIsEqual?@"YES":@"NO");
    
    return 0;
}












