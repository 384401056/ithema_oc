//
//  Person.h
//  10-NSArray数组的遍历
//
//  Created by Gaoyanbin on 15-4-6.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,strong) NSString * name;
@property (nonatomic,assign) int age;

- initWithNmae:(NSString *)name andAge:(int)age;

@end
