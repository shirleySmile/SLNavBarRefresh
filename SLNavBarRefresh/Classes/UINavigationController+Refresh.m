//
//  UINavigationController+Refresh.m
//  text
//
//  Created by 邵磊 on 2017/5/15.
//  Copyright © 2017年 gfhj. All rights reserved.
//

#import "UINavigationController+Refresh.h"

@implementation UIViewController (Refresh)

-(void)viewWillAppearRefresh{
}

-(void)viewDidAppearRefresh{
}


@end


@implementation UINavigationController (Refresh)

- (void)popViewControllerRefresh{
    
    self.viewControllers.count > 1?[self viewControllerRefresh:self.viewControllers[self.viewControllers.count-2] previous:YES]:nil;
    
    [self popViewControllerAnimated:YES];
    
    self.viewControllers.count?[self viewControllerRefresh:[self.viewControllers lastObject] previous:NO]:nil;
    
}

- (void)popToViewControllerRefresh:(UIViewController *)viewController{
    
    [self viewControllerRefresh:viewController previous:YES];
    
    [self popToViewController:viewController animated:YES];
    
    [self viewControllerRefresh:viewController previous:NO];
}

- (void)popToRootViewControllerRefresh{

    self.viewControllers.count?[self viewControllerRefresh:[self.viewControllers firstObject] previous:YES]:nil;
    
    [self popToRootViewControllerAnimated:YES];

    self.viewControllers.count?[self viewControllerRefresh:[self.viewControllers firstObject] previous:NO]:nil;
    
}


- (void)viewControllerRefresh:(UIViewController *)vc previous:(BOOL)previous{

    switch (previous) {
        case YES:
        {
            if ([vc respondsToSelector:@selector(viewWillAppearRefresh)]) {
                [vc viewWillAppearRefresh];
            }
            if (vc.childViewControllers.count) {
                for (UIViewController *child in vc.childViewControllers) {
                    if ([child respondsToSelector:@selector(viewWillAppearRefresh)]) {
                        [child viewWillAppearRefresh];
                    }
                }
            }
        }
            break;
        default:{
            if ([vc respondsToSelector:@selector(viewDidAppearRefresh)]) {
                [vc viewDidAppearRefresh];
            }
            if (vc.childViewControllers.count) {
                for (UIViewController *child in vc.childViewControllers) {
                    if ([child respondsToSelector:@selector(viewDidAppearRefresh)]) {
                        [child viewDidAppearRefresh];
                    }
                }
            }
        }
            break;
    }
}


- (void)notifyRefresh{
    
    self.viewControllers.count > 1?[self viewControllerRefresh:self.viewControllers[self.viewControllers.count-2]]:nil;
}

- (void)notifyRefreshTo:(UIViewController *)viewController{
    [self viewControllerRefresh:viewController previous:YES];
}

- (void)notifyRefreshToRoot{
    self.viewControllers.count?[self viewControllerRefresh:[self.viewControllers firstObject] previous:YES]:nil;
}

- (void)viewControllerRefresh:(UIViewController *)vc{

    if ([vc respondsToSelector:@selector(viewWillAppearRefresh)]) {
        [vc viewWillAppearRefresh];
    }
    if ([vc respondsToSelector:@selector(viewDidAppearRefresh)]) {
        [vc viewDidAppearRefresh];
    }
    if (vc.childViewControllers.count) {
        for (UIViewController *child in vc.childViewControllers) {
            if ([child respondsToSelector:@selector(viewWillAppearRefresh)]) {
                [child viewWillAppearRefresh];
            }
            if ([child respondsToSelector:@selector(viewDidAppearRefresh)]) {
                [child viewDidAppearRefresh];
            }
        }
    }
}


@end
