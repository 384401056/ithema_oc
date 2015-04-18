//
//  main.m
//  14-可变长字典类
//
//  Created by Gaoyanbin on 15-4-8.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[])
{

    //1.创建一个可变长度字典
    NSMutableDictionary * muDic = [[NSMutableDictionary alloc] initWithCapacity:0];
    //2.向字典中村如数据
    [muDic setObject:@"1" forKey:@"one"];
    [muDic setObject:@"2" forKey:@"two"];
    [muDic setObject:@"3" forKey:@"three"];
    
    NSLog(@"muDic %@",muDic);
    
    //3.删除
    [muDic removeObjectForKey:@"one"];
    
    NSLog(@"muDic %@",muDic);
    
    //4.全部删除
    [muDic removeAllObjects];
    
    NSLog(@"muDic %@",muDic);
    
    
    Student * stu1 = [[Student alloc] initWithName:@"xiaoher" andAge:20];
    Student * stu2 = [[Student alloc] initWithName:@"alex" andAge:50];
    Student * stu3 = [[Student alloc] initWithName:@"xiaoli" andAge:10];
    
    [muDic setObject:stu1 forKey:@"s1"];
    [muDic setObject:stu2 forKey:@"s2"];
    [muDic setObject:stu3 forKey:@"s3"];
    //在向字典中存储数据的时候,一定要保证key值是唯一的
    //        [muDic setObject:stu3 forKey:@"s3"];
    //        [muDic setObject:stu3 forKey:@"s3"];
    //        [muDic setObject:stu3 forKey:@"s3"];
    
    
    NSLog(@"muDic %@",muDic);
    
    
    //1.使用for循环遍历字典
    NSArray * allkeys = [muDic allKeys];
    
    for (int i = 0; i < allkeys.count; i++)
    {
        NSString * key = [allkeys objectAtIndex:i];
        Student * stu = [muDic objectForKey:key];
        NSLog(@"stu %@",stu);
    };
    
    //2.使用枚举器
    
    NSEnumerator * enumerator = [muDic objectEnumerator];
    Student * tmp;
    while (tmp = [enumerator nextObject]) {
        NSLog(@"tmp %@",tmp);
    }
    return 0;
}

