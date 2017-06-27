//
//  RequestModel.h
//  AF3Test
//
//  Created by 王文科 on 2017/6/27.
//  Copyright © 2017年 王文科. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking/AFNetworking.h"

@interface RequestModel : AFHTTPSessionManager

+ (instancetype)shareInstance;

@end
