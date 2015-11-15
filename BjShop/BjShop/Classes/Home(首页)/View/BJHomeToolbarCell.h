//
//  BJHomeToolbarCell.h
//  BjShop
//
//  Created by BaiFaHui on 15/11/2.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BJHomeToolbarCell;

typedef enum : NSUInteger {
    BJHomeToolbarCellButtonTypeCategary, // 分类
    BJHomeToolbarCellButtonTypeShoppingCart, // 购物车
    BJHomeToolbarCellButtonTypeMybjia, // 我的
    BJHomeToolbarCellButtonTypeCheap // 特实惠
} BJHomeToolbarCellButtonType;

@protocol BJHomeToolbarCellDelegate <NSObject>

- (void)homeToolbarCell:(BJHomeToolbarCell *)toolbar didClickButton:(BJHomeToolbarCellButtonType)type;

@end

@interface BJHomeToolbarCell : UITableViewCell
@property (nonatomic, weak) id<BJHomeToolbarCellDelegate> delegate;
@end
