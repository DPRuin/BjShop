//
//  GetURLString.m
//  BjShop
//
//  Created by BaiFaHui on 15/11/3.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import "GetURLString.h"

@implementation GetURLString

NSString * const URL = @"http://www.bjia.co";

- (NSString *)URLGoodList
{
    return [URL stringByAppendingPathComponent:@"appIndex/goodList"];
}

SingletonM(GetURLString)

@end
