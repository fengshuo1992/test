//
//  NextViewController.m
//  学习的第一天
//
//  Created by 杭州米发 on 2017/12/12.
//  Copyright © 2017年 杭州米发. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s", __func__);
    NSLog(@"控制器即将出现的时候");
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s", __func__);
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"%s", __func__);
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"%s", __func__);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"%s", __func__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"%s", __func__);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s", __func__);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
