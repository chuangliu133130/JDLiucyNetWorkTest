//
//  JDLiucyNetWork.h
//  JDLiucyNetWork
//
//  Created by liuchaoyang18 on 2021/2/1.
//  Copyright © 2021 liuchaoyang18. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
NS_ASSUME_NONNULL_BEGIN

@interface JDLiucyNetWork : NSObject
/**
 *  POST网络请求
 *  每个请求都添加公共参数
 */
+ (void)POSTWithUrlString:(NSString *)urlString parameters:(NSMutableDictionary *)parameters success:(void (^)(id responseObject))success fail:(void (^)(NSError *error))fail;

/**
 *  GET网络请求
 */
+ (void)GETWithUrlString:(NSString *)urlString parameters:(NSMutableDictionary *)parameters success:(void (^)(id responseObject))success fail:(void (^)(NSError *error))fail;
@end

NS_ASSUME_NONNULL_END
