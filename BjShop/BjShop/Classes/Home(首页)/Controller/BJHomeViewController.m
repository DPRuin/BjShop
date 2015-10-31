//
//  BJHomeViewController.m
//  BjShop
//
//  Created by BaiFaHui on 15/10/30.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomeViewController.h"

@interface BJHomeViewController ()
/** 促销 */
@property (weak, nonatomic) IBOutlet UIScrollView *promoScrollView;
/** 商品 */
@property (weak, nonatomic) IBOutlet UITableView *tableView;

/** 购物车按钮点击 */
- (IBAction)shoppingCartClick:(UIButton *)sender;
/** 我的彼佳按钮点击 */
- (IBAction)myBjiaClick:(UIButton *)sender;
/** 特实惠按钮点击 */
- (IBAction)cheapClick:(UIButton *)sender;
/** 分类按钮点击 */
- (IBAction)categaryClick:(UIButton *)sender;

@end

@implementation BJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"bijia";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(categaryClick:)];

}

#pragma mark - toolBar按钮点击
/**
 *  购物车点击
 */
- (IBAction)shoppingCartClick:(UIButton *)sender {
}
/**
 *  我的彼佳点击
 */
- (IBAction)myBjiaClick:(UIButton *)sender {
}
/**
 *  特实惠点击
 */
- (IBAction)cheapClick:(UIButton *)sender {
}
/**
 *  分类点击
 */
- (IBAction)categaryClick:(UIButton *)sender {
}
@end
