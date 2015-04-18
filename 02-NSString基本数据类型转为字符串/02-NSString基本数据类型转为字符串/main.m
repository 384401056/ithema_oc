//
//  main.m
//  02-NSString基本数据类型转为字符串
//
//  Created by Gaoyanbin on 15-4-4.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //基本数据类型(int float,double char)
    
    
    //1.int类型换换成字符串
    int a = 10;
    NSString * str1 = [NSString stringWithFormat:@"%d",a];
    NSLog(@"str1 %@",str1);
    
    //2.float -> NSString
    float f = 2.4;
    NSString * str3 = [NSString stringWithFormat:@"%.1f",f];
    NSLog(@"str3 %@",str3);
    
    //3.double - >NSstring
    double d = 65.9898;
    NSString * str4 = [NSString stringWithFormat:@"%.4f",d];
    NSLog(@"str4 %@",str4);
    
    //4.char - > NSString
    char c = 'c';
    NSString * str5 = [NSString stringWithFormat:@"%c",c];
    NSLog(@"str5 %@",str5);
    
    //5.NSString -> int
    NSString * str6 = @"1";
    int i1 = [str6 intValue];
    NSLog(@"i1 %d",i1);
    
    //5.NSString -> float
    NSString * str7 = @"9.8";
    float f1 = [str7 floatValue];
    NSLog(@"f1 %.1f",f1);
    
    //6.NSString -> double
    NSString * str8 = @"8.88";
    double d1 = [str8 doubleValue];
    NSLog(@"d1 %.2f",d1);
    
    //注意:当你要把字符串转换成某种基本数据类型的时候,一定要确定你要转化你的数据是正确
    NSString * str9 = @"i386";
    int i2 = [str9 intValue];
    NSLog(@"is %d",i2);
    
    //7.将字符串中的字母转换成大写
    NSString * str10 = @"china";
    NSString * tmpStr1 = [str10 uppercaseString];
    NSLog(@"tmpStr1 %@ str10 %@",tmpStr1,str10);
    
    //8.将字符中的字母转换成小写
    NSString * str11 = @"CHINA";
    NSString * tmpStr2 = [str11 lowercaseString];
    NSLog(@"tmpStr2 %@",tmpStr2);
    
    //9.将首字母大写
    NSString * str12 = @"china";
    NSString * tmpStr3 = [str12 capitalizedString];
    NSLog(@"tmpStr3  %@",tmpStr3);
    
    
    return 0;
}

