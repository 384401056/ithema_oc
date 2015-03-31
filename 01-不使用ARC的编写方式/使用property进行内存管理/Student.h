//
//  Student.h
//  01-不使用ARC的编写方式
//
//  Created by Gaoyanbin on 15-3-31.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

//在.h文件中引入的其它对象要用Class
@class Book;

@interface Student : NSObject

// retain : 生成的set方法里面，release旧值，retain新值
@property (nonatomic, retain) Book *book;
@property (nonatomic, retain) NSString *name;

@end
