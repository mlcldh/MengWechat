//
//  SViewController.m
//  MengWechat
//
//  Created by menglingchao on 16/9/14.
//  Copyright © 2016年 menglingchao. All rights reserved.
//

#import "SViewController.h"

@interface SViewController ()

@end

@implementation SViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (void)presentAnimationStart {
    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(300);
        make.centerX.equalTo(self.view.superview);
         make.centerY.equalTo(self.view.superview).offset(self.view.superview.frame.size.height);
    }];
}
- (void)presentAnimationEnd {
    [self.view mas_updateConstraints:^(MASConstraintMaker *make) {
       make.centerY.equalTo(self.view.superview);
    }];
}
- (void)dismissAnimationEnd {
    [self.view mas_updateConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.superview).offset(self.view.superview.frame.size.height);
    }];
}

@end
