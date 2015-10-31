//
//  BJNavigationController.m
//  BjShop
//
//  Created by BaiFaHui on 15/10/30.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJNavigationController.h"

@interface BJNavigationController ()

@end

@implementation BJNavigationController

+ (void)initialize
{
    // 设置导航栏背景
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"bg_navigationBar_normal"] forBarMetrics:UIBarMetricsDefault];
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName : BJGreenColor} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName : BJGlobalBg} forState:UIControlStateDisabled];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
