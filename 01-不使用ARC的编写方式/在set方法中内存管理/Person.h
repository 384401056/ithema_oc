//
//  Person.h
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-30.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject
{
    int _age;
    Car *_car;
}

- (void)setAge:(int)age;
- (int)age;

- (void)setCar:(Car *)car;
- (Car *)car;

@end
