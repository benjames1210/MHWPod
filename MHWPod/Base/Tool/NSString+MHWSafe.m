//
//  NSString+MHWSafe.m
//  MHWPod
//
//  Created by 苗华威 on 2019/2/25.
//

#import "NSString+MHWSafe.h"
#import "NSObject+MHWSafe.h"

@implementation NSString (MHWSafe)

+ (NSString *)mhw_safeString:(id)string{
    if([string isKindOfClass:[NSNumber class]]){
        NSNumber *num = (NSNumber *)string;
        return num.stringValue;
    }
    else if ([NSObject mhw_empty:string] ||
             [string isEqualToString:@"null"] ||
             [string isEqualToString:@"<null>"] ||
             [string isEqualToString:@"(null)"]) {
        return @"";
    }

    return [NSString stringWithFormat:@"%@", string];
}

+ (BOOL)mhw_isBlankString:(NSString *)string {
    BOOL result = NO;

    if (NULL == string ||
        [string isEqual:nil] ||
        [string isEqual:Nil]){

        result = YES;

    }else if ([string isEqual:[NSNull null]]){

        result = YES;

    }else if (0 == [string length] ||
              0 == [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]){

        result = YES;

    }else if([string isEqualToString:@"(null)"] ||
             [string isEqualToString:@"null"] ||
             [string isEqualToString:@"<null>"]){

        result = YES;
    }

    return result;
}

@end
