//
//  ViewController.m
//  Masonry-Demo
//
//  Created by 沈君瑶 on 2019/9/10.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "LoginView.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) UIView *superview;
@property (nonatomic, strong)UITextField *userName;
@property (nonatomic, strong)UITextField *userPassword;
@property (nonatomic, strong)UIButton *loginButton;
@property (nonatomic, strong)UIButton *sighUpButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title  = @"登录界面";
    UIView *superview = self.view;

    LoginView *view1 = [[LoginView alloc]init];
    [superview addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    [view1.loginButton addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];

}

- (void)loginClick {
    FirstViewController *firstViewController = [[FirstViewController alloc]init];
    firstViewController.title = @"视图1";
    firstViewController.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *firstNavigationController = [[UINavigationController alloc]initWithRootViewController:firstViewController];
    
    SecondViewController *secondViewController = [[SecondViewController alloc]init];
    secondViewController.title = @"视图2";
    secondViewController.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *secondNavigationController = [[UINavigationController alloc]initWithRootViewController:secondViewController];
    
    ThirdViewController *thirdViewController = [[ThirdViewController alloc]init];
    thirdViewController.title = @"视图3";
    thirdViewController.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *thirdNavigationController = [[UINavigationController alloc]initWithRootViewController:thirdViewController];
    
    NSArray *array = @[firstNavigationController, secondNavigationController, thirdNavigationController];
    
    UITabBarController *TBC = [[UITabBarController alloc]init];
    TBC.viewControllers = array;
    [self presentViewController:TBC animated:YES completion:nil];
}

@end
