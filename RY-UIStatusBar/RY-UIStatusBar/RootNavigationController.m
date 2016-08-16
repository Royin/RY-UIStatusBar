//
//  RootNavigationController.m
//  UIStatusBar
//
//  Created by user on 16/8/12.
//  Copyright © 2016年 demo. All rights reserved.
//

#import "RootNavigationController.h"

@interface RootNavigationController ()

@end

@implementation RootNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    
    NSLog(@"--------[RootNavigationController preferredStatusBarStyle]--------");
    return UIStatusBarStyleLightContent;
}


-(BOOL)prefersStatusBarHidden {
    NSLog(@"--------[RootNavigationController prefersStatusBarHidden]--------");
    return NO;
}

-(UIViewController *)childViewControllerForStatusBarStyle {
    //    NSLog(@"--------[RootNavigationController childViewControllerForStatusBarStyle]--------");
    return self.topViewController;
    
}

//-(UIViewController *)childViewControllerForStatusBarHidden {
////    NSLog(@"--------[RootNavigationController childViewControllerForStatusBarHidden]--------");
//    return self.topViewController;
//}
// 无论是否实现该方法，始终调用-[ViewController prefersStatusBarHidden]方法


@end
