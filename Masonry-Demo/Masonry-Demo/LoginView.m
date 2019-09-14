//
//  LoginView.m
//  Masonry-Demo
//
//  Created by Jaya Shen on 2019/9/14.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "LoginView.h"
#import "Masonry.h"

@implementation LoginView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _userName = [[UITextField alloc]init];
    _userPassword = [[UITextField alloc]init];
    _loginButton = [[UIButton alloc]init];
    _sighUpButton = [[UIButton alloc]init];
    
    [self addSubview:_userName];
    [self addSubview:_userPassword];
    [self addSubview:_loginButton];
    [self addSubview:_sighUpButton];
    
    [_userName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self).offset(-100);
        make.width.equalTo(@200);
        make.height.equalTo(@40);
    }];
    [_userPassword mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self->_userName.mas_bottom).offset(10);
        make.width.equalTo(@200);
        make.height.equalTo(@40);
    }];
    
    [_loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self->_userPassword.mas_bottom).offset(10);
        make.left.equalTo(self).offset(100);
        make.right.equalTo(self).offset(-100);
        make.bottom.equalTo(self).offset(-10);
    }];
    [_sighUpButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self.loginButton.mas_bottom).offset(5);
    }];
    
    return self;
}

- (void)layoutSubviews {
    
    _userName.placeholder = @"请输入用户名";
    _userName.delegate = self;
    _userName.borderStyle = UITextBorderStyleBezel;
    
    
    _userPassword.placeholder = @"请输入密码";
    _userPassword.delegate = self;
    _userPassword.borderStyle = UITextBorderStyleBezel;
    _userPassword.secureTextEntry = YES;
    
    
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    [_sighUpButton setTitle:@"注册" forState:UIControlStateNormal];
    [_sighUpButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
