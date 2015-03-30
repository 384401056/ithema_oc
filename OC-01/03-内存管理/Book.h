//
//  Book.h
//  OC-01
//
//  Created by Gaoyanbin on 15-3-25.
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
