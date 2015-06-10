//
//  main.m
//  16-文件管理
//
//  Created by Gaoyanbin on 15-4-18.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //1.文件管理器
    NSFileManager * f1 = [NSFileManager defaultManager];
    NSLog(@"%p",f1);
    
    NSFileManager * f2 = [NSFileManager defaultManager];
    NSLog(@"%p",f2);
    
    NSFileManager * f3 = [[NSFileManager alloc] init];
    NSLog(@"f3 %p",f3);
    
    NSFileManager * f4 = [NSFileManager defaultManager];
    NSLog(@"%p",f4);
    
    //在整个程序没有退出之前,只需要创建一次,我们就可以把它写成单利模式
    //简单的单例模式
    User * u1 = [User defaultUser];
    u1.age = 10;
    
    
    NSLog(@"u1 %p",u1);
    
    
    User * u2 = [User defaultUser];
    
    NSLog(@"u2 %p age = %d",u2,u2.age);
    
    User * u3 = [[User alloc] init];
    
    NSLog(@"u3 %p",u3);
    
    //1.组合模式,(聚合模式)
    //2.单利模式
    //3.策略模式(封装变化点),block
    //4.向上抽象 (protocol(协议))
    //5.享元设计模式(NSString池原理)
    
    return 0;
}

