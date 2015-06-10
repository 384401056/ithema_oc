//
//  NSString+NSStringExt.m
//  02-NSString的判断
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "NSString+NSStringExt.h"

@implementation NSString (NSStringExt)

- (BOOL)myIsEqualToString:(NSString *)str
{
    //1.判断两个字符串指针地址是否相等
    //相等直接返回YES
    if (self == str)
    {
        return YES;
    }
    
    //如果两个字符串的长度不相等
    if (self.length != str.length)
    {
        return NO;
    }
    
    //逐个字符判断
    for (int i = 0; i < str.length; i++)
    {
        unichar c1 = [self characterAtIndex:i];
        unichar c2 = [str characterAtIndex:i];
        if (c1 != c2)
        {
            return NO;
        }
    }
    
    return YES;
}

@end
