//
//  ELPresentedViewController.m
//  MengWechat
//
//  Created by menglingchao on 16/9/14.
//  Copyright © 2016年 menglingchao. All rights reserved.
//

#import "ELPresentedViewController.h"
#import "Masonry.h"

@interface ELPresentedViewController ()

@end

@implementation ELPresentedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    
    UIView *tapView = [[UIView alloc]init];
    [self.view addSubview:tapView];
    [tapView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    [tapView addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
}

#pragma mark -
- (void)tapAction:(UIGestureRecognizer *)r {
    if (self.tapBlock) {
        self.tapBlock();
    }
}

@end
