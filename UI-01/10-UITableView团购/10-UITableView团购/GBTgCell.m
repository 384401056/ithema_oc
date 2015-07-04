//
//  GBTgCell.m
//  10-UITableView团购
//
//  Created by GaoBin on 15-7-4.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "GBTgCell.h"
#import "GBTg.h"

@interface GBTgCell()
@property (weak, nonatomic) IBOutlet UIImageView *iv_icon;
@property (weak, nonatomic) IBOutlet UILabel *lb_title;
@property (weak, nonatomic) IBOutlet UILabel *lb_price;
@property (weak, nonatomic) IBOutlet UILabel *lb_buyCount;

@end

@implementation GBTgCell


+ (instancetype) cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"tgCell";
    
    //使用自定义cell类来显示
    GBTgCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    //如果缓存池中没有，则自己创建。
    if(cell == nil){
        //使用xib文件来创建cell，loadNibNamed方法会得到一个数组，所以要再用lastObject得到对象。
        //而且要在xib中设置identifiler为上面定义的ID。
        cell = [[[NSBundle mainBundle] loadNibNamed:@"GBTgCell" owner:nil options:nil] lastObject];
    }
    
    return cell;
}


- (void)setTg:(GBTg *)tg
{
    _tg = tg;
    
    //设置图片
    self.iv_icon.image = [UIImage imageNamed:tg.icon];
    //设置title
    self.lb_title.text = tg.title;
    //设置价格
    self.lb_price.text = [NSString stringWithFormat:@"¥ %@",tg.price];
    //设置购买人数
    self.lb_buyCount.text =[NSString stringWithFormat:@"%@人已购买",tg.buyCount];
}

@end
