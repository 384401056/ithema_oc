//
//  Car.h
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-30.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int _speed;
}

- (void)setSpeed:(int)speed;
- (int)speed;
@end
