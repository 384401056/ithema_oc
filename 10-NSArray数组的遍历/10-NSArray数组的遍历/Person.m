//
//  Person.m
//  10-NSArray数组的遍历
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithNmae:(NSString *)name andAge:(int)age
{
    //如果创建对象成功（返回id>0）
    if(self = [super init]){
        _name = name;
        _age = age;
    }
    return self;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%d",_name,_age];
}

@end
