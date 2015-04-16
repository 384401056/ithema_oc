//
//  main.m
//  01-NSString
//
//  Created by Gaoyanbin on 15-4-2.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 1.获取字符串。
 2.根据索引获得单个字符。
 3.根据索引获得一个字符串子串。
 4.截取字符串的某一段。
 5.获取一个字符串在另一个字符串中的索引。
 */
int main(int argc, const char * argv[])
{
    
    NSString *str = @"gaoyanbin";
    NSUInteger leng = [str length];//获取字符串长度。
    NSLog(@"%ld",leng);
    
    //如果给定的索引值超出字符串的长度，会导致异常。
    //如果给定的索引是一个负数，会获取一个	乱码。
    unichar c = [str characterAtIndex:2];
    NSLog(@"%c",c);

    NSString *str2 = @"www.qq.com";
    //从索引值开始(包含此索引位置)到末尾，截取字符串。
    NSString *temp = [str2 substringFromIndex:4];
    NSLog(@"%@",temp);
    
    //截取字符串到给定索引处，不包含此索引位置。
    NSString *temp2 = [str2 substringToIndex:3];
    NSLog(@"%@",temp2);

    //截取字符串的某一段。
    NSString *str3 = @"qwertyuiop";
    NSRange range = {range.location = 6,range.length = 4};
    NSString *temp3 = [str3 substringWithRange:range];
    NSLog(@"%@",temp3);
   
    
    //获取一个字符串在另一个字符串中的索引。
    NSString *str4 = @"www.wow.com";
    NSRange range2 = [str4 rangeOfString:@"wow"];
//    NSLog(@"location = %ld,length = %ld",range2.location,(unsigned long)range2.length);
    if(range2.location==NSNotFound)
    {
        //当要找的这个字符串不在其中，location会返回一个很大的值。这个值就是NSNOtFound.
        NSLog(@"没有找到。");
    }
    else
    {
        NSLog(@"Range = %@",NSStringFromRange(range2));//直接将结构体转为NSString.
    }
    
    
    
  
    
    
    
    
    
    
    
    
    return 0;
}






