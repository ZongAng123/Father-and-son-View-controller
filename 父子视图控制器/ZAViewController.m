//
//  ZAViewController.m
//  父子视图控制器
//
//  Created by 纵昂 on 2017/2/20.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#define DCScreenW    [UIScreen mainScreen].bounds.size.width
#define DCScreenH    [UIScreen mainScreen].bounds.size.height

#import "ZAViewController.h"
#import "ZANavTabBarController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
@interface ZAViewController ()


@end

@implementation ZAViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"总控制器";
    
    OneViewController *oneView = [[OneViewController alloc]init];
    oneView.title = @"第一页";
    TwoViewController *twoView = [[TwoViewController alloc]init];
    twoView.title = @"第二页";
    ThreeViewController *threeView = [[ThreeViewController alloc]init];
    threeView.title = @"第三页";
    
    
    NSArray *subViewControllers = @[oneView,twoView,threeView];
    
    ZANavTabBarController *tabBarVC = [[ZANavTabBarController alloc]initWithSubViewControllers:subViewControllers];
    tabBarVC.view.frame = CGRectMake(0, 64, DCScreenW, DCScreenH - 64);
    [self.view addSubview:tabBarVC.view];
    [self addChildViewController:tabBarVC];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
