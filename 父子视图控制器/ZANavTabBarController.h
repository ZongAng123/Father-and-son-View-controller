//
//  ZANavTabBarController.h
//  父子视图控制器
//
//  Created by 纵昂 on 2017/2/20.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZANavTabBarController : UIViewController
-(instancetype)initWithSubViewControllers:(NSArray *)subViewControllers;
@property(nonatomic,copy)UIColor *btnTextNomalColor;
@property(nonatomic,copy)UIColor *btnTextSeletedColor;
@property(nonatomic,copy)UIColor *sliderColor;
@property(nonatomic,copy)UIColor *topBarColor;
@end
