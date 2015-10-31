//
//  BJScrollView.m
//  BjShop
//
//  Created by BaiFaHui on 15/10/31.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJScrollView.h"
#import "UIView+Extension.h"

@implementation BJScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupImageView:@"promo2"];
        [self setupImageView:@"promo1"];
        [self setupImageView:@"promo3"];
    }
    return self;
}

+ (instancetype)scrollView
{
    return [[self alloc] init];
}

- (UIImageView *)setupImageView:(NSString *)imageName
{
    UIImageView *imageView = [[UIImageView alloc] init];
    [self addSubview:imageView];
    //显示图片
    imageView.image = [UIImage imageNamed:imageName];
    
    return imageView;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSUInteger count = self.subviews.count;
    CGFloat imageViewW = self.width;
    CGFloat imageViewH = self.height;
    // 设置所有的frame
    for (int i = 0; i < count; i++) {
        UIImageView *imageVie = self.subviews[i];
        imageVie.width = imageViewW;
        imageVie.height = imageViewH;
        imageVie.x = imageViewW * i;
        imageVie.y = 0;
    }
}
@end
