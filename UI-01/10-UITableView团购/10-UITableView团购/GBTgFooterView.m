//
//  GBTgFooterView.m
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "GBTgFooterView.h"

@interface GBTgFooterView()
- (IBAction)onClickbtn_loadMore;

@property (weak, nonatomic) IBOutlet UIButton *btn_loadMore;
@property (weak, nonatomic) IBOutlet UIView *vi_loading;

@end

@implementation GBTgFooterView

/*
 当一个对象从xib文件中创建初始化完毕后就会被调用。
 */
- (void)awakeFromNib{
    
}

+ (instancetype)footerView
{
    //创建nib对象。
    UINib *nib = [UINib nibWithNibName:@"GBTgFooterView" bundle:nil];
    
    //将nib转换为UIView对象。
    GBTgFooterView *footerView = [[nib instantiateWithOwner:nil options:nil] lastObject];

    return footerView;
}

/*
    点击加载按钮事件.
 */
- (IBAction)onClickbtn_loadMore {
    
    self.btn_loadMore.hidden = YES;
    
    //进度条要勾选animation和hids when stopped.前一个代理显示动画，后一个是指隐藏后会停止。
    self.vi_loading.hidden = NO;
    
    //延时3秒后调用代理的方法，来加载更多的数据，并隐藏进度条。
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        //在调用代理方法前要加上一个判断，判断代理是否已经实现了这个方法。如果实现就调用，没有则跳过。
        if([self.delegate respondsToSelector:@selector(tgFooterViewDidClickedLoadingBtn:)]){
            
            [self.delegate tgFooterViewDidClickedLoadingBtn:self];
            
        }
        
        self.btn_loadMore.hidden = NO;
        self.vi_loading.hidden = YES;
        
    });
    
}
@end








