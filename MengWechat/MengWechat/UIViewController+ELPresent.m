//
//  UIViewController+ELPresent.m
//  MengWechat
//
//  Created by menglingchao on 16/9/14.
//  Copyright © 2016年 menglingchao. All rights reserved.
//

#import "UIViewController+ELPresent.h"
#import "ELPresentedViewController.h"


@implementation UIViewController (ELPresent)

- (void)el_presentViewController:(UIViewController *)viewControllerToPresent animated: (BOOL)flag completion:(void (^)(void))completion {
    ELPresentedViewController *bgVC = [ELPresentedViewController new];
//    bgVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    bgVC.modalPresentationStyle = UIModalPresentationCustom;
    [bgVC addChildViewController:viewControllerToPresent];
    bgVC.tapBlock = ^(){
        [self el_dismissViewControllerAnimated:YES completion:^{
            
        }];
    };
    [bgVC.view addSubview:viewControllerToPresent.view];
    if ([viewControllerToPresent conformsToProtocol:@protocol(ELPresentedDelegate)] && [viewControllerToPresent respondsToSelector:@selector(presentAnimationStart)]) {
        [(UIViewController<ELPresentedDelegate> *)viewControllerToPresent presentAnimationStart];
    } else {
        [viewControllerToPresent.view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(bgVC.view);
            make.top.equalTo(bgVC.view.mas_bottom);
            make.height.mas_equalTo(self.view.frame.size.height / 2);
        }];
    }
    
    [bgVC.view layoutIfNeeded];
    
    [self presentViewController:bgVC animated:NO completion:^{
        if ([viewControllerToPresent conformsToProtocol:@protocol(ELPresentedDelegate)] && [viewControllerToPresent respondsToSelector:@selector(presentAnimationEnd)]) {
            [(UIViewController<ELPresentedDelegate> *)viewControllerToPresent presentAnimationEnd];
        } else {
            [viewControllerToPresent.view mas_updateConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(bgVC.view.mas_bottom).offset(- self.view.frame.size.height / 2);
            }];
        }
        
        [UIView animateWithDuration:0.25 * flag delay:0 options:0 animations:^{
            [bgVC.view layoutIfNeeded];
        } completion:^(BOOL finished) {
            
        }];
    }];
}

- (void)el_dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion {
    ELPresentedViewController *bgVC = (ELPresentedViewController *)self.presentedViewController;
    UIViewController *viewControllerToPresent = bgVC.childViewControllers[0];
    if ([viewControllerToPresent conformsToProtocol:@protocol(ELPresentedDelegate)] && [viewControllerToPresent respondsToSelector:@selector(dismissAnimationEnd)]) {
        [(UIViewController<ELPresentedDelegate> *)viewControllerToPresent dismissAnimationEnd];
    } else {
        [viewControllerToPresent.view mas_updateConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(bgVC.view.mas_bottom);
        }];
    }
    
    [UIView animateWithDuration:0.25 * flag delay:0 options:0 animations:^{
        [bgVC.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        [bgVC dismissViewControllerAnimated:NO completion:^{
            
        }];
    }];
}

@end
