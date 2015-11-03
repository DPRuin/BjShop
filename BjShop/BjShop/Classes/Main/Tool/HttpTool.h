//
//  HttpTool.h
//  DP微博
//
//  Created by 土老帽 on 15/9/25.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTool : NSObject
+ (void)get:(NSString *)url params:(NSMutableDictionary *)params success:(void(^)(id json))success failure:(void (^)(NSError *error))failure;
+ (void)post:(NSString *)url params:(NSMutableDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;
@end
