//
//  NSObject+MHWSafe.h
//  MHWPod
//
//  Created by 苗华威 on 2019/2/25.
//

#import <Foundation/Foundation.h>

@interface NSObject (MHWSafe)

+(BOOL)mhw_empty:(NSObject *)o;

@end

@interface NSObject (MHWSafeNotification)

/**
 处理通知

 @param notification 通知回调
 */
-(void)handleNotification:(NSNotification *)notification;

/**
 注册观察者

 @param name 通知名称
 */
-(void)mhw_observeNotification:(NSString *)name;

/**
 反注册观察者

 @param name 通知名称
 */
-(void)mhw_unobserveNotification:(NSString *)name;

/**
 反注册所有通知
 */
-(void)mhw_unobserveAllNotifications;

/**
 发送通知

 @param name 通知名称
 @return 成功
 */
-(BOOL)mhw_postNotification:(NSString *)name;

/**
 发送通知

 @param name 通知名称
 @param object 对象
 @return 成功
 */
-(BOOL)mhw_postNotification:(NSString *)name withObject:(NSObject *)object;

@end
