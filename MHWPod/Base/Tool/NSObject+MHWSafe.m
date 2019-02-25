//
//  NSObject+MHWSafe.m
//  MHWPod
//
//  Created by 苗华威 on 2019/2/25.
//

#import "NSObject+MHWSafe.h"
#import "NSString+MHWSafe.h"

@implementation NSObject (MHWSafe)
+(BOOL)mhw_empty:(NSObject *)o {
    if(o == nil) {
        return YES;
    }
    if(o == NULL) {
        return YES;
    }
    if(o == [NSNull new]) {
        return YES;
    }
    if([o isKindOfClass:[NSString class]]) {
        return [NSString mhw_isBlankString:(NSString *)o];
    }
    if([o isKindOfClass:[NSData class]]) {
        return [((NSData *)o) length] <= 0;
    }
    if([o isKindOfClass:[NSDictionary class]]) {
        return [((NSDictionary *)o) count]<=0;
    }
    if([o isKindOfClass:[NSArray class]]) {
        return [((NSArray *)o) count]<=0;
    }
    if([o isKindOfClass:[NSSet class]]) {
        return [((NSSet *)o) count]<=0;
    }
    return NO;
}
@end


@implementation NSObject (MHWSafeNotification)

-(void)handleNotification:(NSNotification *)notification {

}

-(void)mhw_observeNotification:(NSString *)name {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:name
                                               object:nil];
}

-(void)mhw_unobserveNotification:(NSString *)name {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:name
                                                  object:nil];
}

-(void)mhw_unobserveAllNotifications {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(BOOL)mhw_postNotification:(NSString *)name {
    return [self mhw_postNotification:name withObject:nil];
}

-(BOOL)mhw_postNotification:(NSString *)name withObject:(NSObject *)object {
    [[NSNotificationCenter defaultCenter] postNotificationName:name object:object];

    return YES;
}

@end
