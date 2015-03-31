//
//  main.m
//  01-ARC的基本使用
//
//  Created by Gaoyanbin on 15-3-30.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{
    Dog *d = [[Dog alloc] init];
    Person *p = [[Person alloc] init];
    
    p.dog = d;
    
    Dog *d2 = [[Dog alloc] init];
    
    p.dog =  d2;
    return 0;
}

