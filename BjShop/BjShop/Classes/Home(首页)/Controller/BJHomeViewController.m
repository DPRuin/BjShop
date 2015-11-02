//
///Volumes/NO NAME/DPRuin/me资源/项目/Kerwin1992:meituan/meituan/meituan.xcodeproj  BJHomeViewController.m
//  BjShop
//
//  Created by BaiFaHui on 15/11/2.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomeViewController.h"
#import "BJHomePromoCell.h"
#import "BJHomeToolbarCell.h"
#import "BJHomeGoodsCell.h"

#import "BJNavigationController.h"
#import "BJCategaryViewController.h"
#import "BJShoppingCartViewController.h"
#import "BJMybjiaViewController.h"
#import "BJCheapViewController.h"

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
#import "UIView+AutoLayout.h"


const NSInteger firstSection = 0;
const NSInteger secondSection = 1;

@interface BJHomeViewController () <UISearchBarDelegate, BJHomeToolbarCellDelegate>

@end

@implementation BJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化导航栏
    [self setupNavItem];

    // self.clearsSelectionOnViewWillAppear = NO;

    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - 初始化操作
/**
 *  初始化导航栏
 */
- (void)setupNavItem
{
    // logo
    UIBarButtonItem *logoItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStyleDone target:nil action:nil];
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
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(categaryClick:) Image:@"icon_sort" highlightImage:@"icon_sort_highlighted"];
    
}

#pragma mark - BJHomeToolbarCellDelegate
- (void)homeToolbarCell:(BJHomeToolbarCell *)toolbar didClickButton:(BJHomeToolbarCellButtonType)type
{
    switch (type) {
        case BJHomeToolbarCellButtonTypeCategary: { // 分类点击
            // modal分类控制器
            BJNavigationController *categaryNav = [[BJNavigationController alloc] initWithRootViewController:[[BJCategaryViewController alloc] init]];
            categaryNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:categaryNav animated:YES completion:nil];
            
            break;
        }
        case BJHomeToolbarCellButtonTypeShoppingCart: { // 购物车点击
            // modal购物车控制器
            BJNavigationController *shoppingCartNav = [[BJNavigationController alloc] initWithRootViewController:[[BJShoppingCartViewController alloc] init]];
            shoppingCartNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:shoppingCartNav animated:YES completion:nil];
            
            break;
        }
        case BJHomeToolbarCellButtonTypeMybjia: { // 我的彼佳点击
            // modal我的彼佳控制器
            BJNavigationController *myBjiaNav = [[BJNavigationController alloc] initWithRootViewController:[[BJMybjiaViewController alloc] init]];
            myBjiaNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:myBjiaNav animated:YES completion:nil];
            
            break;
        }
        case BJHomeToolbarCellButtonTypeCheap: { // 特实惠点击
            // modal特实惠控制器
            BJNavigationController *cheapNav = [[BJNavigationController alloc] initWithRootViewController:[[BJCheapViewController alloc] init]];
            cheapNav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:cheapNav animated:YES completion:nil];
            break;
        }
        default:
            break;
    }
}

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

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == firstSection || section == secondSection) {
        return 1;
    }
    
    return 5;
}


- (id)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case firstSection: {
            static NSString *promoID = @"cell1";
            BJHomePromoCell *cell = [tableView dequeueReusableCellWithIdentifier:promoID];
            if (!cell) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"BJHomePromoCell" owner:self options:nil] firstObject];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
            return cell;
            break;
        }
        case secondSection: {
            static NSString *toolbarID = @"cell2";
            BJHomeToolbarCell *cell = [tableView dequeueReusableCellWithIdentifier:toolbarID];
            if (!cell) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"BJHomeToolbarCell" owner:self options:nil] firstObject];
                
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.delegate = self;
            NSLog(@"%@-----%@", cell, cell.contentView.subviews);
            cell.backgroundColor = [UIColor redColor];
            return cell;
            
            break;
        }
        default:{
            static NSString *goodsID = @"BJHomeGoodsCell";
            BJHomeGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:goodsID];
            if (!cell) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"BJHomeGoodsCell" owner:self options:nil] firstObject];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
            break;
        }
    }
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case firstSection: {
            return 150;
            break;
        }
        case secondSection: {
            return 50;
            break;
        }
        default: {
            return 70;
            break;
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == firstSection) {
        return 1;
    }
    
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 4;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 0)];
    headerView.backgroundColor = [UIColor yellowColor];
    return headerView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 0)];
    footerView.backgroundColor = [UIColor blackColor];
    return footerView;
}



@end
