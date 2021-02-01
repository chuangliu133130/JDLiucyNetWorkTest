//
//  JDLiucyNetWork.m
//  JDLiucyNetWork
//
//  Created by liuchaoyang18 on 2021/2/1.
//  Copyright © 2021 liuchaoyang18. All rights reserved.
//

#import "JDLiucyNetWork.h"
#import <AFNetworking/AFNetworking.h>

@implementation JDLiucyNetWork
/**
 *  POST网络请求
 *  每个请求都添加公共参数
 */
+ (void)POSTWithUrlString:(NSString *)urlString parameters:(NSMutableDictionary *)parameters success:(void (^)(id responseObject))success fail:(void (^)(NSError *error))fail
{
    
    
    NSString *urlStr = [NSString stringWithFormat:@"%@",urlString];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager POST:urlStr parameters:parameters success:^(AFHTTPRequestOperation * _Nonnull operation, id _Nonnull responseObject) {
        success(responseObject);
        } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
            fail(error);

        }];
}

/**
 *  GET网络请求
 */
+ (void)GETWithUrlString:(NSString *)urlString parameters:(NSMutableDictionary *)parameters success:(void (^)(id responseObject))success fail:(void (^)(NSError *error))fail
{
    
    NSString *urlStr = [NSString stringWithFormat:@"%@",urlString];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager GET:urlStr parameters:parameters success:^(AFHTTPRequestOperation * _Nonnull operation, id _Nonnull responseObject) {
        success(responseObject);
        } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
            fail(error);
        }];
}
@end
