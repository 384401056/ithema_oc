//
//  main.m
//  03-内存管理
//
//  Created by Gaoyanbin on 15-3-25.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 引用计数器的基本操作
    *因为当对象的计数器为0时对象就会被系统回收，所以手动回收对象主要是操作对象的计数器。
 1.方法的基本使用
 1> retain ：计数器+1，会返回对象本身
 2> release ：计数器-1，没有返回值
 3> retainCount ：获取当前的计数器
 4> dealloc
 * 当一个对象要被回收的时候，就会调用dealloc
 * 一定要调用[super dealloc]，这句调用要放在最后面
 
 2.概念
 1> 僵尸对象 ：所占用内存已经被回收的对象，僵尸对象不能再使用
 2> 野指针 ：指向僵尸对象（不可用内存）的指针，给野指针发送消息会报错（EXC_BAD_ACCESS）
 3> 空指针 ：没有指向任何东西的指针（存储的东西是nil、NULL、0），给空指针发送消息不会报错
 */
int main(int argc, const char * argv[])
{
    /*
     1.创建Target时要去掉 User ARC 的选项。
     2.要将本Target的BuildSetting中的 Automatic Reference Counting改为no 在Applet LLVM 4.1 Language下，否则 release 方法不能使用。
     
     用alloc,new	,[mutable]copy创建对象，一定要用relase对计数器减一。
     如果有对象要引用已经创建出的对象，要对后者进行一个 retain 操作对计数器加1。这个操作可以放在set方法中。
     重写对象的dealloc方法，在回收此对象前，进行其它组合对象的回收。
     当对象的retainCount为0后，要将指针设置为nil.

    */
    Book *b = [[Book alloc] init];
    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    Person *p3 = [[Person alloc] init];

    [p1 setBook:b];
    [p2 setBook:b];
    [p3 setBook:b];
    
    
    

    [b release];
    b = nil;
    [p1 release];
    p1 = nil;
    [p2 release];
    p2 = nil;
    [p3 release];
    p3 = nil;

    

    return 0;
}

