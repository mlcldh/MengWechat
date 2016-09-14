//
//  ViewController.m
//  MengWechat
//
//  Created by menglingchao on 16/9/13.
//  Copyright © 2016年 menglingchao. All rights reserved.
//

#import "ViewController.h"
#import "PViewController.h"
#import "SViewController.h"
#import "Masonry.h"
#import "UIViewController+ELPresent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)butttonAction:(UIButton *)sender {
//    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"title" message:@"message" preferredStyle:(UIAlertControllerStyleAlert)];
    
    PViewController *vc = [[PViewController alloc]init];
//    vc.view.frame = CGRectMake(10, 50, 200, 200);
//    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//    vc.modalPresentationStyle = UIModalPresentationCustom;
    NSLog(@"what%@,%@",@(vc.modalTransitionStyle),@(vc.modalPresentationStyle));
    [self el_presentViewController:vc animated:YES completion:^{
        
    }];
//    [self presentViewController:vc animated:YES completion:^{
//        
//    }];
}
- (IBAction)buttonAction2:(UIButton *)sender {
    SViewController *vc = [[SViewController alloc]init];
    NSLog(@"what%@,%@",@(vc.modalTransitionStyle),@(vc.modalPresentationStyle));
    [self el_presentViewController:vc animated:YES completion:^{
        
    }];
}

@end
