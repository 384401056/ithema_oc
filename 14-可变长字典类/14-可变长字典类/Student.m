//
//  Student.m
//  14-可变长字典类
//
//  Created by Gaoyanbin on 15-4-8.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if(self = [super init]){
        _name = name;
        _age = age;
        
    }
    return self;
}

 - (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,age = %d",_name,_age];
}

@end
