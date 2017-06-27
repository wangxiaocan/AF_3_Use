//
//  ViewController.m
//  AF_3_Use
//
//  Created by 王文科 on 2017/6/27.
//  Copyright © 2017年 王文科. All rights reserved.
//

#import "ViewController.h"
#import "RequestModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [[RequestModel shareInstance] POST:@"http://1.xiaocan.applinzi.com/test.php" parameters:@{@"name":@"xiaocan",@"age":@"23",@"data":@{@"page":@"3",@"pagesize":@"20"}} progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",dic);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
