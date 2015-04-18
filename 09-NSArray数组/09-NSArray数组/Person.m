//
//  Person.m
//  09-NSArray数组
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init])
    {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %@ name = %d",_name,_age];
}

@end
