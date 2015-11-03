//
//  GetURLString.h
//  BjShop
//
//  Created by BaiFaHui on 15/11/3.
//  Copyright © 2015年 BaiFaHui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

@interface GetURLString : NSObject

/**
 *  商品列表
 */
- (NSString *)URLGoodList;

SingletonH(GetURLString)

@end
