//
//  ViewController.m
//  07-图片缩放
//
//  Created by GaoBin on 15-5-8.
//  Copyright (c) 2015年 GB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置scrollView的内容大小。
    self.scrollView.contentSize = self.imageView.frame.size;
    
    //设置scrollView的缩放比例.否则无缩放效果。
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.3;
    
    self.scrollView.delegate = self;
    
    
}
/*
 UIScrollViewDelegate中的方法。
 
 开始拖动scrollView时调用。
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"开始拖动....");
}

/*
 UIScrollViewDelegate中的方法。
 
 scrollView在滚动的过程中，不停的调用。
 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
     NSLog(@"正在滚动....");
}

/*
 UIScrollViewDelegate中的方法。

 用户捏合手势时调用此方法(只是开始时调用几次)，返回的就是要被缩放的控件。
 */
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    NSLog(@"捏合手势....");
    return self.imageView;
}

/*
 UIScrollViewDelegate中的方法。
 
 缩放的过程中，不停的调用。
 */
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    NSLog(@"正在缩放....");
}


@end
