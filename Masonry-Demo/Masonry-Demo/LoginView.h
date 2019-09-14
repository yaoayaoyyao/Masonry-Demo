//
//  LoginView.h
//  Masonry-Demo
//
//  Created by Jaya Shen on 2019/9/14.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginView : UIView<UITextFieldDelegate>

@property (nonatomic, strong)UITextField *userName;
@property (nonatomic, strong)UITextField *userPassword;
@property (nonatomic, strong)UIButton *loginButton;
@property (nonatomic, strong)UIButton *sighUpButton;


@end

NS_ASSUME_NONNULL_END
