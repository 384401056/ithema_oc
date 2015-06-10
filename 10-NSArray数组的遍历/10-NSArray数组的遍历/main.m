//
//  main.m
//  10-NSArray数组的遍历
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    
#pragma mark 枚举器
    
    NSArray * array = [NSArray arrayWithObjects:@"100",@"200",@"300", nil];
    
    NSEnumerator *enumerator = [array objectEnumerator];
    
    NSString * value;
    while (value = [enumerator nextObject])
    {
        //取出当前对象在数组中的下标值。
        NSUInteger index = [array indexOfObject:value];
        NSLog(@"Array[%ld]:%@",index,value);
    }
    
    return 0;
}

#pragma mark 注意事项
void test2()
{
    
    //注意事项
    //如果你的数组中村粗了多种不同类型的数据,那么最好不要调用某个对象特有的方法,会导致程序崩溃
    //在实际的开发中,一个数组往往只负责存储一种数据类型
    
    Person * p1 = [[Person alloc] initWithNmae:@"Gaoaynbin" andAge:20];
    NSArray * array = [NSArray arrayWithObjects:@"1",[NSNumber numberWithInt:20],p1,nil];
    
    for(NSObject * obj in array)
    {
        //取出当前对象在数组中的下标值。
        NSUInteger index = [array indexOfObject:obj];
        NSLog(@"Array[%ld],%@",index,[NSString stringWithFormat:@"%@",obj]);
    }
}

#pragma mark 增强for循环.
void text1()
{
    NSArray * array = [NSArray arrayWithObjects:@"10",@"20",@"30", nil];
    
    for(NSString * str in array){
        //取出当前对象在数组中的下标值。
        NSUInteger index = [array indexOfObject:str];
        NSLog(@"Array[%ld]:%@",index,str);
    }
}

#pragma mark 使用普通for循环遍历数组
void text()
{

    NSArray * array = @[@"one",@"two",@"three"];
    for (int i = 0; i < array.count; i++)
    {
        NSString * str = array[i];
        NSLog(@"array[%d] = %@",i,str);	
    }
}



