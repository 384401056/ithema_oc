//
//  Book.h
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    NSString *_name;
}

- (void)setName:(NSString *)name;

- (NSString *)name;
@end
