//
//  BJHomeToolbarCell.m
//  BjShop
//
//  Created by BaiFaHui on 15/11/2.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomeToolbarCell.h"

@interface BJHomeToolbarCell ()

/** toobar按钮 */
@property (weak, nonatomic) IBOutlet UIButton *categaryBtn;
@property (weak, nonatomic) IBOutlet UIButton *shoppingCart;
@property (weak, nonatomic) IBOutlet UIButton *mybjia;
@property (weak, nonatomic) IBOutlet UIButton *cheap;


- (IBAction)categaryClick:(UIButton *)btn;
- (IBAction)shoppingCartClick:(UIButton *)btn;
- (IBAction)mybjiaClick:(UIButton *)btn;
- (IBAction)cheapClick:(UIButton *)btn;

@end

@implementation BJHomeToolbarCell

- (void)abwakeFromNib
{
    self.categaryBtn.tag = BJHomeToolbarCellButtonTypeCategary;
}

- (IBAction)categaryClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(homeToolbarCell:didClickButton:)]) {
        [self.delegate homeToolbarCell:self didClickButton:btn.tag];
    }
}

- (IBAction)shoppingCartClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(homeToolbarCell:didClickButton:)]) {
        [self.delegate homeToolbarCell:self didClickButton:btn.tag];
    }
}

- (IBAction)mybjiaClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(homeToolbarCell:didClickButton:)]) {
        [self.delegate homeToolbarCell:self didClickButton:btn.tag];
    }
}

- (IBAction)cheapClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(homeToolbarCell:didClickButton:)]) {
        [self.delegate homeToolbarCell:self didClickButton:btn.tag];
    }
}

@end
