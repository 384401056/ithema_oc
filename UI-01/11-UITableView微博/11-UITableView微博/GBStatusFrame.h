//
//  GBStatusFrame.h
//  11-UITableView微博
//
//  Created by GaoBin on 15-7-5.
//  Copyright (c) 2015年 GB. All rights reserved.

//  这个模型对象专门用来存放cell内部所有的子控件的frame数据  + cell的高度
// 一个cell拥有一个MJStatusFrame模型

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GBStatus;

@interface GBStatusFrame : NSObject

/**
 *  头像的frame
 */
@property (nonatomic, assign, readonly) CGRect iconF;
/**
 *  昵称的frame
 */
@property (nonatomic, assign, readonly) CGRect nameF;
/**
 *  会员图标的frame
 */
@property (nonatomic, assign, readonly) CGRect vipF;
/**
 *  正文的frame
 */
@property (nonatomic, assign, readonly) CGRect textF;
/**
 *  配图的frame
 */
@property (nonatomic, assign, readonly) CGRect pictureF;

/**
 *  cell的高度
 */
@property (nonatomic, assign, readonly) CGFloat cellHeight;

@property (strong,nonatomic) GBStatus *status;

@end
