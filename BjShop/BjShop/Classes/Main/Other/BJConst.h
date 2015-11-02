
#import <Foundation/Foundation.h>

#ifdef DEBUG
#define BJLog(...) NSLog(__VA_ARGS__)
#else
#define BJLog(...)
#endif

#define BJColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define BJGlobalBg BJColor(230, 230, 230)

#define BJGreenColor BJColor(32, 191, 179)

// 屏幕大小尺寸
#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height
// 系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]