//
//  main.m
//  12-NSMutableArray可变数组
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //NSMutableArray 继承至 NSArray
    //        NSArray * array = @[];
    //1.创建可变数组
    NSMutableArray * array = [[NSMutableArray alloc] initWithCapacity:0];
    
    //使用addObject 动态给数组中增加元素
    /*
     [array addObject:@"one"];
     [array addObject:@"two"];
     [array addObject:@"three"];
     [array addObject:@"one"];
     */
    NSString * str1 = @"one";
    NSString * str2 = @"two";
    NSString * str3 = @"three";
    
    //数组中可以存储,同一个对象多次
    [array addObject:str1];
    [array addObject:str2];
    [array addObject:str3];
    [array addObject:str1];
    
    //2.指定对象插入的位置
    [array insertObject:str1 atIndex:2];
    
    //3.删除 会通过对象,删除数组中所有的同一个地址的对象
    [array removeObject:str1];
    
    //4.通过索引的方式删除对象,超出了数组的count值,那么就会导致异常 index beyond bounds
    [array removeObjectAtIndex:0];
    
    [array addObject:str2];
    [array addObject:str3];
    [array addObject:str1];
    
    //5.删除数组中所有的元素
    [array removeAllObjects];
    
    
    NSLog(@"array %@",array);
    
    
    [array addObject:str2];
    [array addObject:str3];
    [array addObject:str1];
    
    //1.for换遍历
    for (int i = 0; i < array.count; i++)
    {
        NSString * str = [array objectAtIndex:i];
        
        //在遍历数组的时候,千万不要给数组中,增加,或者删除元素
        //            [array removeObject:str1];
        
        NSLog(@"str %@",str);
        
    }
    
    
    //2.增强for循环
    for (NSString * str in array)
    {
        //            [array removeObject:str1];
        //如果你在增强for循环中,删除元素,会直接导致异常出现
        NSLog(@"str %@",str);
    }
    
    //3.枚举器
    
    NSEnumerator * enumerator = [array objectEnumerator];
    NSString * value;
    while (value = [enumerator nextObject]) {
        //如果你在枚举器中,删除元素,会直接导致异常出现
        //            [array removeObject:str1];
        NSLog(@"str %@",value);
    }
    
    
    //4.要通过遍历的方式确定删除哪个元素怎么办
    
    NSMutableArray * array2 = [[NSMutableArray alloc] init];
    [array2 addObject:@"1"];
    [array2 addObject:@"2"];
    [array2 addObject:@"3"];
    [array2 addObject:@"4"];
    [array2 addObject:@"5"];
    
    NSMutableArray * tmp = [[NSMutableArray alloc] init];
    
    for (NSString * str in array2)
    {
        if ([str isEqualToString:@"3"])
        {
            [tmp addObject:str];
        }
    }
    
    NSLog(@"array2 %@",array2);
    NSLog(@"tmp %@",tmp);
    
    
    //遍历临时数组
    for (int i = 0; i < tmp.count; i++)
    {
        NSString * str = [tmp objectAtIndex:i];
        
        //从原数组中删除,临时数组中存储的对象
        [array2 removeObject:str];
    }
    
    NSLog(@"array2 %@",array2);
    
    return 0;
}

