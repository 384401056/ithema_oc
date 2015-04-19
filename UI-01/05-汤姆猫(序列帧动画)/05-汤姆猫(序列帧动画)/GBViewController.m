//
//  GBViewController.m
//  05-汤姆猫(序列帧动画)
//
//  Created by Gaoyanbin on 15-4-19.
//  Copyright (c) 2015年 Gaoyanbin. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tom;

- (IBAction)drink;
- (IBAction)Knockout;
- (IBAction)footleft;
- (void)runAnimationWithNumber:(int)number andFileName:(NSString *)name;
- (void)clearCache;
@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)runAnimationWithNumber:(int)number andFileName:(NSString *)name
{
    //如果正在播放动画则直接返回。
    if (self.tom.isAnimating){
        return;
    }
    
    NSMutableArray *images = [NSMutableArray array];
    
    for (int i=0; i<number+1; i++)
    {
        NSString *fileName = [NSString stringWithFormat:@"%@_%02d.jpg",name,i];
        
        //通过imageNamed加载图片有缓存，但是不会自动清空,缓存会不停的递增。
//        UIImage *image = [UIImage imageNamed:fileName];
        
        //通过imageWithContentsOfFile加载图片不会缓存。
        NSBundle *boundle = [NSBundle mainBundle];
        NSString *path = [boundle pathForResource:fileName ofType:nil];
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        
        [images addObject:image];
        
    }
    
    self.tom.animationImages = images;
    self.tom.animationDuration = images.count*0.05;
    self.tom.animationRepeatCount = 1;
    [self.tom startAnimating];
    
    //使用延时器来释放images,动画播放完成后0.5秒释放images
    GLfloat delay = self.tom.animationDuration+0.5;
    [self performSelector:@selector(clearCache) withObject:nil afterDelay:delay];

}

- (void)clearCache
{
    self.tom.animationImages = nil;
}

- (IBAction)drink {
    [self runAnimationWithNumber:80 andFileName:@"drink"];
}

- (IBAction)Knockout {
    [self runAnimationWithNumber:80 andFileName:@"knockout"];

}

- (IBAction)footleft {
    [self runAnimationWithNumber:29 andFileName:@"footLeft"];

}
@end








