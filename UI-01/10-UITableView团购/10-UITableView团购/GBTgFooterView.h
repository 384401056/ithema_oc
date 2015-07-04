//
//  GBTgFooterView.h
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GBTgFooterView;
/*
 协议的命名规范是 类名＋Delegate
 */
@protocol GBTgFooterViewDelegate <NSObject>
/*
 方法的命名规范是：类名(不加前缀)＋方法名 + 被代理对象参数 ＋ 其它参数。
 加被代理对象参数:因为一个代理对象可能代理多个相同类的对象。例如：一个控制器可能是多个ScrollView的代理。只有根据参数来区分是执行哪个对象的方法
 */
- (void)tgFooterViewDidClickedLoadingBtn:(GBTgFooterView *)tgFooterView;

@end


@interface GBTgFooterView : UIView

+ (instancetype)footerView;

@property (weak,nonatomic) id<GBTgFooterViewDelegate> delegate;//代理属性。

@end
