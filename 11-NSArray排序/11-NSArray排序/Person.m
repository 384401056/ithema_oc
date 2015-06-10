//
//  Person.m
//  11-NSArray排序
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "Person.h"

@implementation Person

- initWithName:(NSString *)name andAge:(int)age andYear:(NSString *)year
{
    if(self = [super init]){
        
        _name = name;
        _age = age;
        _year = year;
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@ age=%d year=%@",_name,_age,_year];
}
@end
