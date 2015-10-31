//
//  BJHomeViewController.m
//  BjShop
//
//  Created by BaiFaHui on 15/10/30.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomeViewController.h"
#import "BJNavigationController.h"
#import "BJCategaryViewController.h"
#import "BJShoppingCartViewController.h"
#import "BJMybjiaViewController.h"
#import "BJCheapViewController.h"

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
    // modal购物车控制器
    BJNavigationController *shoppingCartNav = [[BJNavigationController alloc] initWithRootViewController:[[BJShoppingCartViewController alloc] init]];
    shoppingCartNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:shoppingCartNav animated:YES completion:nil];
    
}
/**
 *  我的彼佳点击
 */
- (IBAction)myBjiaClick:(UIButton *)sender {
    // modal我的彼佳控制器
    BJNavigationController *myBjiaNav = [[BJNavigationController alloc] initWithRootViewController:[[BJMybjiaViewController alloc] init]];
    myBjiaNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:myBjiaNav animated:YES completion:nil];
}
/**
 *  特实惠点击
 */
- (IBAction)cheapClick:(UIButton *)sender {
    // modal特实惠控制器
    BJNavigationController *cheapNav = [[BJNavigationController alloc] initWithRootViewController:[[BJCheapViewController alloc] init]];
    cheapNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:cheapNav animated:YES completion:nil];
}
/**
 *  分类点击
 */
- (IBAction)categaryClick:(UIButton *)sender {
    // modal分类控制器
    BJNavigationController *categaryNav = [[BJNavigationController alloc] initWithRootViewController:[[BJCategaryViewController alloc] init]];
    categaryNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:categaryNav animated:YES completion:nil];
}
@end
