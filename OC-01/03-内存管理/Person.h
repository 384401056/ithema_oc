//
//  Person.h
//  OC-01
//
//  Created by Gaoyanbin on 15-3-25.
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
