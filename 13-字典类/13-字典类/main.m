//
//  main.m
//  13-字典类
//
//  Created by Gaoyanbin on 15-4-8.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
//字典是以键值对的形式来存储数据  key value
int main(int argc, const char * argv[])
{
    //1.创建字段,不可变的
    NSDictionary * dic = [NSDictionary dictionaryWithObjectsAndKeys:@"xiaozhe",@"name", nil];
    NSLog(@"dic %@",dic);
    
    //2.快捷创建方式
    NSDictionary * dic2 = @{ @"one":@"1",@"two":@"2"};
    NSLog(@"dic2 %@",dic2);
    
    //3.字典中可以存任意数据类型
    // 字典的顺序不是自然顺序
    NSArray * array = @[@"one",@"two"];
    
    NSDictionary * dic3 = @{
                            @"one":@"1",
                            @"num":[NSNumber numberWithInt:10],
                            @"aaa":dic2,
                            @"bbb":dic,
                            @"ar1":array
                            
                            };
    
    NSLog(@"dic3 %@",dic3);
    
    //4.获得字典的长度
    NSLog(@"count %ld",dic3.count);
    
    //5.从字典中取值
    
    NSString * str  = [dic3 objectForKey:@"one"];
    NSLog(@"str %@",str);
    
    NSNumber * num = [dic3 objectForKey:@"num"];
    NSLog(@"num %@",num);

    NSDictionary * dicTmp = [dic3 objectForKey:@"aaa"];
    NSLog(@"dicTmp %@",dicTmp);
    NSArray * arrayTmp = [dic3 objectForKey:@"ar1"];
    NSLog(@"arrayTmp %@",arrayTmp);
    
    
    //6.遍历
    
    //取出所有的key值
    NSArray * allkeys = [dic3 allKeys];
    NSLog(@"allkeys %@",allkeys);
    
    for (int i = 0; i < allkeys.count; i++)
    {
        NSString * key = [allkeys objectAtIndex:i];
        
        //如果你的字典中存储的多种不同的类型,那么最好用id类型去接受它
        id obj  = [dic3 objectForKey:key];
        NSLog(@"obj %@",obj);
    }
    
    //2.枚举器
    
    NSEnumerator * enumerator =  [dic3 objectEnumerator];
    
    id value;
    while (value = [enumerator nextObject]) {
        NSLog(@"value %@",value);
    }
    
    
    
    return 0;
}

