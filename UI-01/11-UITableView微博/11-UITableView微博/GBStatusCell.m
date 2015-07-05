//
//  GBStatusCell.m
//  11-UITableView微博
//
//  Created by GaoBin on 15-7-5.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "GBStatusCell.h"
#import "GBStatusFrame.h"
#import "GBStatus.h"

// 昵称的字体
#define GBNameFont [UIFont systemFontOfSize:14]
// 正文的字体
#define GBTextFont [UIFont systemFontOfSize:15]

@interface GBStatusCell()

@property (weak,nonatomic) UIImageView *iv_icon; //头像
@property (weak,nonatomic) UILabel *lb_name;     //昵称
@property (weak,nonatomic) UIImageView *iv_vip;  //会员头像
@property (weak,nonatomic) UILabel *lb_text;     //正文
@property (weak,nonatomic) UIImageView *iv_pic;  //配图

@end

@implementation GBStatusCell

- (void)awakeFromNib {
    // Initialization code
}


/*
    构造方法(在初始化对象的时候会调用)
    重写UITableViewCell的初始化方法。
 */

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //先调父类的初始化方法。
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        
        //创建cell中的子控件。
        
        //头象
        UIImageView *iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconView];
        self.iv_icon = iconView;
        
        //昵称
        UILabel *nameView = [[UILabel alloc] init];
        nameView.font = GBNameFont;
        [self.contentView addSubview:nameView];
        self.lb_name = nameView;
        
        //vip图片
        UIImageView *vipView = [[UIImageView alloc] init];
        vipView.image = [UIImage imageNamed:@"vip"]; //设置vip图片。此图片所有cell都一样。
        [self.contentView addSubview:vipView];
        self.iv_vip = vipView;
        
        //正文
        UILabel *textView = [[UILabel alloc] init];
        textView.font = GBTextFont;
        [self.contentView addSubview:textView];
        self.lb_text = textView;
        
        //配图
        UIImageView *picView = [[UIImageView alloc] init];
        [self.contentView addSubview:picView];
        self.iv_pic = picView;
        
    }
    
    return self;

}

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    
    static NSString *ID = @"statusCell";
    
    GBStatusCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell==nil){
        cell = [[GBStatusCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}

- (void)setStatusFrame:(GBStatusFrame *)statusFrame{
    
    _statusFrame = statusFrame;
    
    // 1.设置数据
    [self settingData];
    
    // 2.设置frame
    [self settingFrame];

}

- (void)settingData{
    
    GBStatus *status = self.statusFrame.status;
    
    //头像
    self.iv_icon.image = [UIImage imageNamed:status.icon];
    //昵称
    self.lb_name.text = status.name;
    
    //vip头像
    if(status.vip){
        self.iv_vip.hidden = NO;
        self.lb_name.textColor = [UIColor redColor];//改变字体颜色。
    }else{
        self.iv_vip.hidden = YES;
        self.lb_name.textColor = [UIColor blackColor];
    }
    
    //正文
    self.lb_text.text = status.text;
    
    //配图
    if(status.picture){
        self.iv_pic.hidden = NO;
        self.iv_pic.image = [UIImage imageNamed:status.picture];
    }else{
        self.iv_pic.hidden = YES;
    }
}

- (void)settingFrame{
    
    //设置头像frame
    self.iv_icon.frame = self.statusFrame.iconF;
    //设置昵称frame
    self.lb_name.frame = self.statusFrame.nameF;
    
    self.iv_vip.frame = self.statusFrame.vipF;
    
    self.lb_text.frame = self.statusFrame.textF;
    
    self.iv_pic.frame = self.statusFrame.pictureF;
}


@end














