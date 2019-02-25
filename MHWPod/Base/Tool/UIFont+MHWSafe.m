//
//  UIFont+MHWSafe.m
//  AFNetworking
//
//  Created by 苗华威 on 2019/2/25.
//

#import "UIFont+MHWSafe.h"

@implementation UIFont (MHWSafe)

+(UIFont *)mhw_fontWithName:(NSString *)fontName size:(CGFloat)fontSize {
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (font == nil) {
        font = [UIFont boldSystemFontOfSize:fontSize];
    }
    return font;
}

@end
