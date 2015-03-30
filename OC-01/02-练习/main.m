//
//  main.m
//  02-练习
//
//  Created by Gaoyanbin on 15-3-22.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

//日期结构体。
typedef struct{
    int year;
    int month;
    int day;
}MyDate;

//颜色枚举类型。
typedef enum
{
    kIColorBlack,
    kIColorGreen,
    kIColorBlue
}IColor;

//性别枚举类型。
typedef enum
{
    kIGenderMale,
    kIGenderFemale
}IGender ;


#pragma mark 狗类
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




#pragma mark 人类

@interface Person : NSObject
{
    @public
    NSString *_name;
    MyDate _birthday;
    Dog *_dog;
}

- (void)print;

- (void)FeedDog;//喂狗 

- (void)liuDog;//溜狗

@end

@implementation Person

- (void)print
{
    NSLog(@"Name:%@,Birthday:%d-%d-%d",_name,_birthday.year,_birthday.month,_birthday.day);
}

- (void)FeedDog
{
    [_dog eat];
}

- (void)liuDog
{
    [_dog run];
}

@end

int main(int argc, const char * argv[])
{
    Person *p = [Person new];
    p->_name = @"Gaoyanbin";
    MyDate d = {1981,10,29};
    p->_birthday = d;
    
    [p print];
    
    Dog *dog = [Dog new];
    dog->_color = kIColorBlack;
    dog->_gender = kIGenderMale;
    dog->_weight = 20.5;
    dog->_speed = 100.0;
    p->_dog = dog;
    
    [p->_dog bark];
    [p FeedDog];
    [p liuDog];
    

    return 0;
}


















