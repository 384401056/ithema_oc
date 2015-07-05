//
//  GBStatusFrame.m
//  11-UITableView微博
//
//  Created by GaoBin on 15-7-5.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "GBStatusFrame.h"
#import "GBStatus.h"



// 昵称的字体
#define GBNameFont [UIFont systemFontOfSize:14]
// 正文的字体
#define GBTextFont [UIFont systemFontOfSize:15]

@implementation GBStatusFrame

/**
 *  计算文字尺寸
 *
 *  @param text    需要计算尺寸的文字
 *  @param font    文字的字体
 *  @param maxSize 文字的最大尺寸
 */
- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}


- (void)setStatus:(GBStatus *)status{
    
    _status = status;
    
    // 子控件之间的间距
    CGFloat padding = 10;
    
    // 1.头像
    CGFloat iconX = padding;
    CGFloat iconY = padding;
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    // 2.昵称
    // 文字的字体
    CGSize nameSize = [self sizeWithText:self.status.name font:GBNameFont maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGFloat nameX = CGRectGetMaxX(_iconF) + padding;
    CGFloat nameY = iconY + (iconH - nameSize.height) * 0.5;
    _nameF = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    
    // 3.会员图标
    CGFloat vipX = CGRectGetMaxX(_nameF) + padding;
    CGFloat vipY = nameY;
    CGFloat vipW = 14;
    CGFloat vipH = 14;
    _vipF = CGRectMake(vipX, vipY, vipW, vipH);
    
    // 4.正文
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxY(_iconF) + padding;
    CGSize textSize = [self sizeWithText:self.status.text font:GBTextFont maxSize:CGSizeMake(300, MAXFLOAT)];
    _textF = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    // 5.配图
    if (self.status.picture) {// 有配图,cell的总高度为配图的最大y值加padding
        CGFloat pictureX = textX;
        CGFloat pictureY = CGRectGetMaxY(_textF) + padding;
        CGFloat pictureW = 100;
        CGFloat pictureH = 100;
        _pictureF = CGRectMake(pictureX, pictureY, pictureW, pictureH);
        
        _cellHeight = CGRectGetMaxY(_pictureF) + padding;
        
    } else {//无配图,cell的总高度为正文的最大y值加padding
        
        _cellHeight = CGRectGetMaxY(_textF) + padding;
        
    }
}

@end
