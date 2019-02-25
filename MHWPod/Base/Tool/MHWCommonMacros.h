//
//  MHWCommonMacros.h
//  Pods
//
//  Created by 苗华威 on 2019/2/25.
//

#ifndef MHWCommonMacros_h
#define MHWCommonMacros_h

#import <UIFont+MHWSafe.h>

#define kIOS8 ([[UIDevice currentDevice].systemVersion floatValue] >= 8?1:0)

#define kScreenWidth (kIOS8?[UIScreen mainScreen].bounds.size.width:[UIScreen mainScreen].bounds.size.height)
#define kScreenHeight (kIOS8?[UIScreen mainScreen].bounds.size.height:[UIScreen mainScreen].bounds.size.width)
#define kScreenBounds CGRectMake(0, 0, kScreenWidth, kScreenHeight)
#define kScreenCenter CGPointMake(kScreenWidth*0.5, kScreenHeight*0.5)

#define kIsIPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define kIsIPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define kNavBarheight (kIsIPad ? 64.0 : 44.0)
#define kStatusBarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height)
#define kNavStatusBarHeight (kStatusBarHeight + kNavBarheight)

#define RGB(r, g, b) [UIColor colorWithRed:(r) / 255.0f green:(g) / 255.0f blue:(b) / 255.0f alpha:1]
#define kRGBHEX(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define kMHWFont(fontValue) [UIFont systemFontOfSize:fontValue]
#define kMHWPFFont(fontValue) [UIFont mhw_fontWithName:@"PingFangSC-Medium" size:fontValue]
#define kMHWSBPFFont(fontValue) [UIFont mhw_fontWithName:@"PingFangSC-Semibold" size:fontValue]
#define kMHWBPFFont(fontValue) [UIFont mhw_fontWithName:@"PingFangSC-bold" size:fontValue]
#define kMHWTahomaFont(fontValue) [UIFont mhw_fontWithName:@"Tahoma" size:fontValue]
#define kMHWFZXYFont(fontValue) [UIFont mhw_fontWithName:@"FZY1JW--GB1-0" size:fontValue]
#define kMHWFZCYFont(fontValue) [UIFont mhw_fontWithName:@"FZY4JW--GB1-0" size:fontValue]



#endif /* MHWCommonMacros_h */
