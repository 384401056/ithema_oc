//
//  main.m
//  06-NSMutableString可变长度字符串
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //1.创建可变字符串
    //NSMutableString 继承自 NSString
    //NSMutableString 用油NSString所有的属性以及方法
    //        NSMutableString * muStr = [[NSMutableString alloc] init];
    NSMutableString * muStr = [[NSMutableString alloc] initWithCapacity:0];
    
    //是初始化字符串内容
    [muStr setString:@"www"];
    
    NSLog(@"mustr %p",muStr);
    
    //动态的给字符串末尾追加新值
    [muStr appendString:@".cn"];
    
    //在指定的索引位置,插入字符串
    [muStr insertString:@".itcast" atIndex:3];
    
    //删除指定范围的字符串
    //你要删除的长度,一定不能够超出字符串的的长度,导致异常Range or index out of bounds
    NSRange range = {3,7};
    //        [muStr deleteCharactersInRange:range];
    
    [muStr replaceCharactersInRange:range withString:@"传智播客"];
    
    NSLog(@"muStr %@",muStr);
    
    
    
    return 0;
}

