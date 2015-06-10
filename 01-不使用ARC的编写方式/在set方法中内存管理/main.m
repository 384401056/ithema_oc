//
//  main.m
//  在set方法中内存管理
//
//  Created by Gaoyanbin on 15-3-30.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

/*
 内存管理代码规范：
 1.只要调用了alloc，必须有release（autorelease）
 对象不是通过alloc产生的，就不需要release
 
 2.set方法的代码规范
 1> 基本数据类型：直接复制
 - (void)setAge:(int)age
 {
 _age = age;
 }
 
 2> OC对象类型
 - (void)setCar:(Car *)car
 {
 // 1.先判断是不是新传进来对象
 if ( car != _car )
 {
 // 2.对旧对象做一次release
 [_car release];
 
 // 3.对新对象做一次retain
 _car = [car retain];
 }
 }
 
 3.dealloc方法的代码规范
 1> 一定要[super dealloc]，而且放到最后面
 2> 对self（当前）所拥有的其他对象做一次release
 - (void)dealloc
 {
 [_car release];
 [super dealloc];
 }
 */

// 速度为100的车子：
// 速度为200的车子：p1->_car

int main(int argc, const char * argv[])
{
    // p-1
    Person *p = [[Person alloc] init];
    p.age = 20;
    
    // c1-1
    Car *c1 = [[Car alloc] init];
    c1.speed = 250;
    
    // p想拥有c1
    // c1-2
    p.car = c1;  // [p setCar:c1];
    
    // c2-1
    Car *c2 = [[Car alloc] init];
    c2.speed = 300;
    
    // p将车换成了c2
    // c1-1
    // c2-2
    p.car = c2;
    
    // c2-1
    [c2 release];
    // c1-0
    [c1 release];
    // p-0 c2-0
    [p release];
    
    
    return 0;
}

