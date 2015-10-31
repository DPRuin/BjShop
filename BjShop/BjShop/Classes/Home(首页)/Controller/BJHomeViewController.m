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
#import "UIBarButtonItem+Extension.h"
#import "UIView+AutoLayout.h"
#import "UIView+Extension.h"

@interface BJHomeViewController () <UISearchBarDelegate, UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate>
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
    // 初始化导航栏
    [self setupNavItem];
    
    // 初始化促销:显示图片
    [self setupPromoScrollView];


}

#pragma mark - 初始化操作
- (void)setupPromoScrollView
{
    // 添加图片到ScrollView
    CGFloat scrollW = self.promoScrollView.width;
    CGFloat scrollH = self.promoScrollView.height;
    for (int i = 0; i < 3; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.width = scrollW;
        imageView.height = scrollH;
        imageView.y = 0;
        imageView.x = scrollW * i;
        [self.promoScrollView addSubview:imageView];
        
        //显示图片
        NSString *imageName = [NSString stringWithFormat:@"promo%d", i];
        imageView.image = [UIImage imageNamed:imageName];
        
    }
}

/**
 *  初始化导航栏
 */
- (void)setupNavItem
{
    // logo
    UIBarButtonItem *logoItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"index_03"] style:UIBarButtonItemStyleDone target:nil action:nil];
    logoItem.enabled = NO;
    self.navigationItem.leftBarButtonItem = logoItem;
    
    // 搜索框
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.placeholder = @"请输入关键词";
    searchBar.delegate = self;
    searchBar.backgroundImage = [UIImage imageNamed:@"bg_login_textfield"];
    searchBar.tintColor = BJGreenColor;
    UIView *titleView = [[UIView alloc] init];
    titleView.width = 200;
    titleView.height = 30;
    [titleView addSubview:searchBar];
    
    self.navigationItem.titleView = titleView;
    [searchBar autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
    
    // 分类按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(categaryClick:) Image:@"Coin.png" highlightImage:@"Coin.png"];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"HomeTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

#pragma mark - UIScrollViewDelegate


#pragma mark - UISearchBarDelegate
/**
 *  键盘弹出：搜索框文字开始编辑
 */
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    // 搜索框背景图片
    searchBar.backgroundImage = [UIImage imageNamed:@"bg_login_textfield_hl"];
    // 显示搜索框取消按钮
    [searchBar setShowsCancelButton:YES animated:YES];
}

/**
 *  键盘退下：搜索框文字结束编辑
 */
- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar
{
    // 搜索框背景图片
    searchBar.backgroundImage = [UIImage imageNamed:@"bg_login_textfield"];
    
    // 隐藏搜索框取消按钮
    [searchBar setShowsCancelButton:NO animated:YES];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
//    self.keyWord = searchBar.text;
//    // 进入下拉刷新状态 发送请求给服务器
//    [self.collectionView headerBeginRefreshing];
    
    // 退出键盘
    [searchBar resignFirstResponder];
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
