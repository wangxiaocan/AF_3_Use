//
//  RequestModel.m
//  AF3Test
//
//  Created by 王文科 on 2017/6/27.
//  Copyright © 2017年 王文科. All rights reserved.
//

#import "RequestModel.h"

@implementation RequestModel

+ (instancetype)shareInstance{
    static RequestModel *requestModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        requestModel = [[RequestModel alloc]init];
        requestModel.requestSerializer = [AFHTTPRequestSerializer serializer];
        requestModel.responseSerializer = [AFHTTPResponseSerializer serializer];
        requestModel.requestSerializer.timeoutInterval = 10.0f;
    });
    return requestModel;
}

@end
