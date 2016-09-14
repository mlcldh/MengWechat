//
//  UIViewController+ELPresent.h
//  MengWechat
//
//  Created by menglingchao on 16/9/14.
//  Copyright © 2016年 menglingchao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@protocol ELPresentedDelegate <NSObject>

@optional;
- (void)presentAnimationStart;
- (void)presentAnimationEnd;
- (void)dismissAnimationEnd;
//- (void)initConstraints;

@end

@interface UIViewController (ELPresent)

- (void)el_presentViewController:(UIViewController *)viewControllerToPresent animated: (BOOL)flag completion:(void (^)(void))completion;
- (void)el_dismissViewControllerAnimated: (BOOL)flag completion: (void (^)(void))completion;

@end
