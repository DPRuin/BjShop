//
//  BJShoppingCartViewController.m
//  BjShop
//
//  Created by BaiFaHui on 15/10/31.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJShoppingCartViewController.h"

@interface BJShoppingCartViewController ()

@end

@implementation BJShoppingCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"购物车";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(back)];
}

- (void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
