//
//  NSString+MHWSafe.h
//  MHWPod
//
//  Created by 苗华威 on 2019/2/25.
//

#import <Foundation/Foundation.h>

@interface NSString (MHWSafe)

/**
 返回安全字符串
 针对NSNumber类型转字符串，针对nil、Nil、NULL、NSNull对象转成空字符串。
 @param string 字符串
 @return 安全字符串
 */
+(NSString *)mhw_safeString:(NSString *)string;

/**
 判断字符串是否为空
 @param string 字符串
 @return 字符串是否为空返回YES NO
 */
+(BOOL)mhw_isBlankString:(NSString *)string;

@end
