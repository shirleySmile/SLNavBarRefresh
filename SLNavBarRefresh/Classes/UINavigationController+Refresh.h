//
//  UINavigationController+Refresh.h
//  text
//
//  Created by 邵磊 on 2017/5/15.
//  Copyright © 2017年 gfhj. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIViewController (Refresh)

-(void)viewWillAppearRefresh;

-(void)viewDidAppearRefresh;

@end


@interface UINavigationController (Refresh)

/** 返回并且通知 **/
- (void)popViewControllerRefresh;

- (void)popToViewControllerRefresh:(UIViewController *)viewController;

- (void)popToRootViewControllerRefresh;



/** 只通知刷新数据，不返回controller */
- (void)notifyRefresh;  //refresh previous viewcontroller;

- (void)notifyRefreshTo:(UIViewController *)viewController;    //refresh specified viewcontroller

- (void)notifyRefreshToRoot;   //refresh root viewcontroller

@end

