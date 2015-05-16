//
//  ViewController.m
//  08-广告轮播器
//
//  Created by GaoBin on 15-5-16.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (strong,nonatomic) NSTimer *timer; //自动播放图片的定时器。
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int imageNum = 5;
    CGFloat imageW = self.scrollView.frame.size.width;
    CGFloat imageH = self.scrollView.frame.size.height;
    
    //循环添加UIImageView到scrollView中。
    for(int i=0;i<imageNum;i++){
        
        UIImageView *imageView = [[UIImageView alloc] init];
        CGFloat imageX = i*imageW;
        
        imageView.frame = CGRectMake(imageX, 0, imageW, imageH);
        imageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"img_0%d",i+1]];
        [self.scrollView addSubview:imageView];
    }
    
    self.scrollView.contentSize = CGSizeMake(imageNum*imageW, 0);
    self.scrollView.delegate = self;
    
    [self.scrollView setShowsHorizontalScrollIndicator:NO];//隐藏滚动条。
    
    [self.scrollView setPagingEnabled:YES]; //设置scrollView的分页。
    
    [self.pageControl setNumberOfPages:imageNum];//设置分页控制器的页数。
    
    [self addTimer];//开启定时器，实现定时滚动。并且要在开始拖拽scrollView时关闭定时器。
}

/*
 添加一个定时器。
 */
- (void)addTimer{
    
    //设置定时器，让scrollView自己滚动。下面的方法返回一个自动开始的定时器，它每隔3.0秒会执行self中的nextImage方法。
    self.timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    
    //在主线程的消息队列中加入本定时器，让主线程在执行其它事件时，此定时器也会得到执行时间。
    //否则，在还有一个scrollView的情况下，另一个scrollView在被拖动时这个定时器就停止执行了。
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

/*
 移除一个定时器。
 */
- (void)removeTimer{
    //停止定时器，一旦定时器被停止，这个定时器就不能使用了，只能清空释放。
    [self.timer invalidate];
    self.timer = nil;
}



/*
 显示下一张图片。(定时器调用的方法)
 */
- (void)nextImage{
    
    int page = 0;
    
    if(self.pageControl.currentPage == 4){
        
        page = 0;
        
    }else{
        page = self.pageControl.currentPage+1;
    }
    
    CGFloat offsetX = page * self.scrollView.frame.size.width;
    
    //scrollVeiw改变contentOffset属性进行移动，并带有动画。
    //当scrollView滚动时，就会调用scrollViewDidScroll方法，这样pageControl也会自动改变。
    [self.scrollView setContentOffset:CGPointMake(offsetX, 0) animated:YES];
    
}

#pragma mark 代理方法

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    //通过scrollVeiw的滚动来设置pageControl显示当前页。
    //根据已经拖动的距离整除一个完整图片的宽度，得到一个整数。
    int page = scrollView.contentOffset.x/scrollView.frame.size.width + 0.3;
    
    [self.pageControl setCurrentPage:page];
}

/*
 开始拖拽scrollView时被调用。在这个方法中清除定时器。
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self removeTimer];
}

/*
 停止拖拽scrollView时被调用。
 */
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self addTimer];
}

@end



















