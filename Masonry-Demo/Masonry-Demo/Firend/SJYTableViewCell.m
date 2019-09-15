//
//  SJYTableViewCell.m
//  Masonry-Demo
//
//  Created by Jaya Shen on 2019/9/15.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SJYTableViewCell.h"
#import "Masonry.h"

@implementation SJYTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _firstNameLabel = [[UILabel alloc]init];
    [self addSubview:_firstNameLabel];
    
    _firstImage = [[UIImageView alloc]init];
    [self addSubview:_firstImage];
    
    _firstLabel = [[UILabel alloc]init];
    [self addSubview:_firstLabel];
    
    
    [_firstNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).mas_offset(10);
        make.top.equalTo(self);
        make.width.equalTo(@375);
        make.height.equalTo(@40);
    }];
    
    [_firstImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self->_firstNameLabel.mas_bottom).offset(5);
        make.left.equalTo(self).mas_offset(10);
        make.width.equalTo(@60);
        make.height.equalTo(@60);
    }];
    
    [_firstLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self->_firstImage.mas_bottom).offset(10);
        make.left.equalTo(self).mas_offset(10);
        make.width.equalTo(@100);
        make.height.equalTo(@30);
    }];
    
    
    return self;
}

- (void)layoutSubviews {
    _firstLabel.text = @"猫眼资讯";
    _firstLabel.font = [UIFont systemFontOfSize:15];
    _firstLabel.textColor = [UIColor grayColor];
    
    _firstNameLabel.text = @"《我在未来等你》";
    _firstNameLabel.font = [UIFont systemFontOfSize:20];
    
    _firstImage.image = [UIImage imageNamed:@"guanzhu_img5"];
}

@end
