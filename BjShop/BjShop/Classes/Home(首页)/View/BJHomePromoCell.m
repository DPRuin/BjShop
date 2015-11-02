//
//  BJHomePromoCell.m
//  BjShop
//
//  Created by BaiFaHui on 15/11/2.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomePromoCell.h"

@implementation BJHomePromoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        NSLog(@"11111");
    }
    return self;
}

- (void)awakeFromNib {
    NSLog(@"999999");
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
