//
//  main.m
//  09-NSArray数组
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    //1.创建集合
    //NSArray 是不可变数组,一旦创建完成就不能够对数组进行,添加,删除等操作
    NSArray * array = [[NSArray alloc] init];
    
    NSLog(@"%@",array);
    
    //2.通过构造方法的方式创建一个NSArray
    //在创建一个NSArray的时候,集合的最后一个元素一定是nil
    NSArray * array1 = [NSArray arrayWithObjects:@"one",@"two",@"three", nil];
    NSLog(@"%@",array1);
    
    //3.数组中可以存储不同类型的对象
    NSNumber * number = [NSNumber numberWithInt:10];
    NSArray * array2 = [[NSArray alloc] initWithObjects:@"one",@"two",number, nil];
    NSLog(@"array2  %@",array2);
    
    //4.数组实际上存储的时对象的地址,同样也可以存储数组的地址
    NSArray * a1 = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
    NSArray * a2 = [[NSArray alloc] initWithObjects:@"1",@"2",@"3", nil];
    NSArray * a3 = [[NSArray alloc] initWithObjects:a1,a2, nil];
    
    NSLog(@"a3 %@",a3);
    
    //5.存储自定义的对象
    //最好都给我重写 description方法
    Person * p1 = [[Person alloc] initWithName:@"xiaozhe" andAge:20];
    Person * p2 = [[Person alloc] initWithName:@"hell" andAge:18];
    Person * p3 = [[Person alloc] initWithName:@"marray" andAge:38];
    
    NSArray * array3 = [[NSArray alloc] initWithObjects:p1,p2,p3, nil];
    NSLog(@"array3  %@",array3);
    
    //6.数组中存储基本数据类型,
    //如果你要在数组中存储基本数据类型,请给我包装好了之后在去存 NSNumber
    //注意不要把nil值存储到NSArray中,会导致数据丢失
    NSString * str = nil;
    NSArray * array4 = [[NSArray alloc] initWithObjects:@"2",str,[NSNumber numberWithInt:23], nil];
    NSLog(@"array4 %@",array4);
    
    //7.创建数组的快捷方式
    NSArray * karray = @[@"a",@"b",@"c"];
    NSLog(@"karray %@",karray);
    
    //8.快速获得一个数组中的元素
    NSString * kstr = karray[0];
    NSLog(@"kstr %@",kstr);
    
    
    #pragma mark 从集合中取出对象
    {
        //9.从集合中取出数据
        NSArray * array = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
        //数组的index时从0开始的
        NSString * str = [array objectAtIndex:0];
        NSLog(@"str %@",str);
        
        //10.获得数组的元素个数
        NSUInteger arrayCount = [array count];
        NSLog(@"arrayCount %ld",(unsigned long)arrayCount);
        
    }
    
    
    #pragma mark 判断数组中是否存在某个对象
    {
        
        Person * p1 = [[Person alloc] initWithName:@"xiaozhe" andAge:20];
        Person * p2 = [[Person alloc] initWithName:@"nihao" andAge:30];
        
        NSArray * array = @[p1,p2];
        
        BOOL isContain = [array containsObject:p1];
        if (isContain)
        {
            NSLog(@"存在");
        }else
        {
            NSLog(@"不存在");
        }
        
    }

    
    
    return 0;
}







