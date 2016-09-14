//
//  PViewController.m
//  MengWechat
//
//  Created by menglingchao on 16/9/14.
//  Copyright © 2016年 menglingchao. All rights reserved.
//

#import "PViewController.h"

#import "UIViewController+ELPresent.h"

@interface PViewController ()

@end

@implementation PViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
//    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    
    UIButton *dismissButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 50, 50)];
    dismissButton.backgroundColor = [UIColor purpleColor];
    [dismissButton addTarget:self action:@selector(butttonAction:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:dismissButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)butttonAction:(UIButton *)sender {
    [self el_dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
