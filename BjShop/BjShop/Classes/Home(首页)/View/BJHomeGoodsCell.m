//
//  BJHomeGoodsCell.m
//  BjShop
//
//  Created by BaiFaHui on 15/11/2.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomeGoodsCell.h"
#import "BJHomeGoodsCollectionViewCell.h"
#import "UIView+Extension.h"

@interface BJHomeGoodsCell () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *goodsCollectionView;

@end

@implementation BJHomeGoodsCell

static NSString * const reuseIdentifier = @"BJHomeGoodsCollectionViewCell";

- (void)awakeFromNib {
    // 1.设置流动布局
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    self.goodsCollectionView.collectionViewLayout = flowLayout;
    flowLayout.itemSize = CGSizeMake(150, 150);
    
    //计算内边距
    int cols = 2;
    CGFloat insert = (self.goodsCollectionView.width - cols * flowLayout.itemSize.width) / (cols + 1);
    flowLayout.sectionInset = UIEdgeInsetsMake(insert, insert, insert, insert);
    
    // 2.注册
    [self.goodsCollectionView registerNib:[UINib nibWithNibName:@"BJHomeGoodsCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    
    // 3.设置代理
    self.goodsCollectionView.delegate = self;
    self.goodsCollectionView.dataSource = self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

- (BJHomeGoodsCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BJHomeGoodsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    return cell;
}


#pragma mark - UICollectionViewDelegate



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
