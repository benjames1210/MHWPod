//
//  NSString+MHWAdd.h
//  MHWPod
//
//  Created by 苗华威 on 2019/2/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (MHWAdd)

/**
 字符串根据字体和展示范围计算Size

 @param font 字体
 @param size size
 @param lineBreakMode 换行方式
 @return size
 */
-(CGSize)mhw_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;


/**
 字符串根据字体和展示范围计算size

 @param font 字体
 @param size size
 @param lineBreakMode 换行方式
 @param spacing 行间距
 @return size
 */
-(CGSize)mhw_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode lineSpacing:(CGFloat)spacing;


/**
 字符串根据字体和宽度计算高度

 @param font 字体
 @param width 宽度
 @return 高度值
 */
-(CGFloat)mhw_heightForFont:(UIFont *)font width:(CGFloat)width;


/**
 字符串根据字体计算宽度

 @param font 字体
 @return 宽度值
 */
-(CGFloat)mhw_widthForFont:(UIFont *)font;

@end





