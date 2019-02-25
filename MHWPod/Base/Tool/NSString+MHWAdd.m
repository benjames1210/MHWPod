//
//  NSString+MHWAdd.m
//  MHWPod
//
//  Created by 苗华威 on 2019/2/21.
//

#import "NSString+MHWAdd.h"

@implementation NSString (MHWAdd)

-(CGSize)getStringSizeForFont:(UIFont *)font
                     andWidth:(CGFloat)aWidth
                    andHeight:(CGFloat)aHeight {
    CGSize size = CGSizeZero;
    NSDictionary *attribute = @{NSFontAttributeName: font};
    size = [self boundingRectWithSize:CGSizeMake(aWidth, aHeight) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;

    return size;
}

-(CGSize)mhw_sizeForFont:(UIFont *)font
                    size:(CGSize)size
                    mode:(NSLineBreakMode)lineBreakMode {
    CGSize result;
    NSMutableDictionary *attr = [NSMutableDictionary new];
    attr[NSFontAttributeName] = font;
    if(lineBreakMode != NSLineBreakByWordWrapping) {
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        paragraphStyle.lineBreakMode = lineBreakMode;
        attr[NSParagraphStyleAttributeName] = paragraphStyle;
    }
    CGRect rect = [self boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                  attributes:attr
                                     context:nil];
    result = rect.size;

    return result;
}


-(CGSize)mhw_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode lineSpacing:(CGFloat)spacing {
    CGSize result;
    NSMutableDictionary *attr = [NSMutableDictionary new];
    attr[NSFontAttributeName] = font;
    if(lineBreakMode != NSLineBreakByWordWrapping) {
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        paragraphStyle.lineSpacing = spacing;
        paragraphStyle.lineBreakMode = lineBreakMode;
        attr[NSParagraphStyleAttributeName] = paragraphStyle;
    }
    CGRect rect = [self boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                  attributes:attr
                                     context:nil];
    result = rect.size;

    return result;
}


-(CGFloat)mhw_heightForFont:(UIFont *)font width:(CGFloat)width {
    CGSize size = [self mhw_sizeForFont:font size:CGSizeMake(width, HUGE) mode:NSLineBreakByWordWrapping];

    return size.height;
}


-(CGFloat)mhw_widthForFont:(UIFont *)font {
    CGSize size = [self mhw_sizeForFont:font size:CGSizeMake(HUGE, HUGE) mode:NSLineBreakByWordWrapping];
    return size.width;
}

@end
