//
//  BJHomeViewController.m
//  BjShop
//
//  Created by BaiFaHui on 15/10/30.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "BJHomeViewController.h"

@interface BJHomeViewController ()

@end

@implementation BJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"bijia";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(menuButtonClick)];
    
    // 拖拽手势
    UIPanGestureRecognizer *recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragging:)];
    [self.view addGestureRecognizer:recognizer];

}

- (void)dragging:(UIPanGestureRecognizer *)recognizer
{
    
}


- (void)menuButtonClick
{

}
@end
