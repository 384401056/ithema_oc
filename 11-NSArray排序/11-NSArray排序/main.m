//
//  main.m
//  11-NSArray排序
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    
    //1.使用sortedArrayUsingSelector
    //也是最简单的排序方式
    //数组是按照你存入元素的顺序存储的
    
    NSArray * array = @[@"b",@"d",@"a",@"z"];
    NSLog(@"排序前 array %@",array);
    
    array = [array sortedArrayUsingSelector:@selector(compare:)];
    //        NSArray * array1 = [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"排序后 array %@",array);
    
    //2.使用block方式排序
    NSArray * array2 = @[@"z",@"4",@"b",@"3",@"x"];
    
    NSLog(@"array2 排序前 %@",array2);
    array2 = [array2 sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        /*
         NSComparisonResult retuslt = [obj1 compare:obj2];
         
         return retuslt;
         */
        //obj1 compare obj2 就是正序排序
        //            return [obj1 compare:obj2];
        //obj2 compare obj1 就是倒序排序
        return [obj2 compare:obj1];
        
    }];
    NSLog(@"array2 排序后 %@",array2);
    
    
    Person * p1 = [[Person alloc] initWithName:@"xiaozhe" andAge:20 andYear:@"1990"];
    Person * p2 = [[Person alloc] initWithName:@"alex" andAge:18 andYear:@"2990"];
    Person * p3 = [[Person alloc] initWithName:@"merry" andAge:25 andYear:@"1890"];
    
    NSArray * array3 = @[p1,p2,p3];
    NSLog(@"array3 排序前 %@",array3);
    
    //3.使用 给数组排序
    //如果你向给你自己定义的对象排序,必须根据某一个属性来排序,
    //sortDescriptorWithKey 参数要的就是你对象中,要依据哪个属性来排序,你就把哪个属性的名字当成key传入
    //ascending YES表示正序 NO表示倒叙
    NSSortDescriptor * d1 = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:NO];
    NSSortDescriptor * d2 = [NSSortDescriptor sortDescriptorWithKey:@"year" ascending:NO];
    
    //如果你要使用多个属性进行排序,默认在前面的NSSortDescriptor优先级比较高
    NSArray * descripts = @[d2,d1];
    
    array3 = [array3 sortedArrayUsingDescriptors:descripts];
    
    NSLog(@"array 3 排序后  %@",array3);
    
    
    //4.
    NSArray * array4 = @[p1,p2,p3];
    NSLog(@"array4 排序前 %@",array4);
    array4 = [array4 sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        Person * p1 = obj1;
        Person * p2 = obj2;
        
        //year
        return [p1.year compare:p2.year];//只有NSString类型才有compare方法。
        return [p1.age > p2.age];

        
        
    }];
    NSLog(@"array4 排序后 %@",array4);
    
    return 0;
}

