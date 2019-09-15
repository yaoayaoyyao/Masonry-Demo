//
//  FirendViewController.m
//  Masonry-Demo
//
//  Created by Jaya Shen on 2019/9/15.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "FirendViewController.h"
#import "SJYTableViewCell.h"
#import "Masonry.h"

static NSString *str1 = @"SJYCell";
@interface FirendViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)UITableView *firendTableView;

@end

@implementation FirendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _firendTableView = [[UITableView alloc]init];
    _firendTableView.delegate = self;
    _firendTableView.dataSource = self;
    _firendTableView.showsVerticalScrollIndicator = NO;
    [_firendTableView registerClass:[SJYTableViewCell class] forCellReuseIdentifier:str1];
    [self.view addSubview:_firendTableView];
    [_firendTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(375, 375));
        make.center.equalTo(self.view);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SJYTableViewCell *firstTableViewCell = [_firendTableView dequeueReusableCellWithIdentifier:str1 forIndexPath:indexPath];
    firstTableViewCell.layer.borderColor = [[UIColor blueColor]CGColor];
    firstTableViewCell.layer.borderWidth = 1;
    firstTableViewCell.layer.cornerRadius = 20;
    firstTableViewCell.layer.masksToBounds = YES;
    return firstTableViewCell;
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
