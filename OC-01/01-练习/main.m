//
//  main.m
//  01-练习
//
//  Created by Gaoyanbin on 15-3-21.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//
#import <Foundation/Foundation.h>
/*
 要求：
 * 类名、属性名、属性类型、方法名、方法参数、方法返回值自拟
 * 自己写main函数测试设计是否合理
 
 1.设计一个”狗“类
 1> 属性
 * 颜色
 * 速度（单位是m/s）
 * 性别
 * 体重（单位是kg）
 
 2> 行为
 * 吃：每吃一次，体重增加0.5kg，输出吃完后的体重
 * 吠（叫）：输出所有的属性
 * 跑：每跑一次，体重减少0.5kg，输出速度和跑完后的体重
 * 比较颜色：跟别的狗比较颜色，如果一样，返回YES，不一样，返回NO
 * 比较速度：跟别的狗比较速度，返回速度差（自己的速度 - 其他狗的速度）
 */
typedef enum
{
    kIColorBlack,
    kIColorGreen,
    kIColorBlue
}IColor;
typedef enum
{
    kIGenderMale,
    kIGenderFemale
}IGender ;

@interface Dog : NSObject
{
@public
    IColor _color;
    float _speed;
    IGender _gender;
    float _weight;
    
}
- (void)eat;
- (void)bark;
- (void)run;
- (BOOL)compareColor:(Dog*) other;
- (float)compareSpeed:(Dog*) other;
@end

@implementation Dog
- (void)eat
{
    _weight+=0.5;
    NSLog(@"Eat: weight = %.2fKG",_weight);
}
- (void)bark
{
    NSLog(@"Bark: Color = %d, Speed = %.2fm/s, Gender = %d, Weight = %.2fKG",_color,_speed,_gender,_weight);
}
- (void)run
{
    _weight-=0.5;
    NSLog(@"Run: weight = %.2fKG",_weight);
}
- (BOOL)compareColor:(Dog*)other
{
    return other->_color==_color;
}
- (float)compareSpeed:(Dog*)other
{
    return _speed - other->_speed;
}
@end
int main(int argc, const char * argv[])
{
    Dog *dog = [Dog new];
    Dog *other = [Dog new];
    
    dog->_color = kIColorGreen;
    dog->_speed = 10.5;
    dog->_gender = kIGenderMale;
    dog->_weight = 20.7;
    
    other->_color = kIColorGreen;
    other->_speed = 20.3;
    other->_gender = kIGenderFemale;
    other->_weight = 50.9;
    
    [dog eat];
    [dog bark];
    [dog run];
    
    BOOL sameColor = [dog compareColor:other];
    NSLog(@"SameColor: %d",sameColor);
    float Speed = [dog compareSpeed:other];
    NSLog(@"Speed =  %.2fm/s",Speed);
    
    
    
    return 0;
}
