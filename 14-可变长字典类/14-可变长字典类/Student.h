//
//  Student.h
//  14-可变长字典类
//
//  Created by Gaoyanbin on 15-4-8.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property(nonatomic,strong) NSString *name;
@property(nonatomic,assign) int age;

- initWithName:(NSString *)name andAge:(int)age;

@end
