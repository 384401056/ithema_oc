//
//  Person.h
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Person : NSObject
{
    Book *_book;
}


- (void)setBook:(Book *)book;

- (Book *)book;
@end
