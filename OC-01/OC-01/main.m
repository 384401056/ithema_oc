//
//  main.m
//  OC-01
//
//  Created by Gaoyanbin on 15-3-21.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persion : NSObject
{
    @public
    int _age ;
    int _weight;
}

- (void)run;

- (void)eat:(char *)name :(int) number;

@end

@implementation Persion

- (void)run
{
    NSLog(@"Run!!!!!,age = %d",_age);
}

- (void)eat:(char *)name :(int)number
{
    NSLog(@"eat %s,%d",name,number);
}

@end

int main(int argc, const char * argv[])
{
    
    Persion *p = [Persion new];
    p->_age = 100;
    p->_weight = 98;
    [p run];
    [p eat:"Apple" :200];

    //"%@"是NSLog用来输出对象类型的。NSString是OC专用的字符串类型。
    NSLog(@"%@",[NSString stringWithFormat:@"age = %d,weight = %d",p->_age,p->_weight]);
    
    return 0;
}

