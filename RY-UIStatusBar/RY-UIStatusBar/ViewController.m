//
//  ViewController.m
//  UIStatusBar
//
//  Created by user on 16/8/11.
//  Copyright © 2016年 demo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) BOOL statusBarHidden;
@property (nonatomic, assign) UIStatusBarStyle statusBarStyle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// statusBar 隐藏切换
- (IBAction)statusBarHiddenChanged:(UISwitch *)sender {
    
    self.statusBarHidden = sender.on;
    [UIView animateWithDuration:2.0 animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
}

// statusBar style切换
- (IBAction)statusBarStyleChanged:(UISwitch *)sender {
    
    if (sender.on) {
        self.statusBarStyle = UIStatusBarStyleLightContent;
    } else {
        self.statusBarStyle = UIStatusBarStyleDefault;
    }
    
    [UIView animateWithDuration:2.0 animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
    
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    NSLog(@"--------[ViewController preferredStatusBarStyle]--------");
    return self.statusBarStyle;
    //return UIStatusBarStyleLightContent;
}

-(BOOL)prefersStatusBarHidden {
    NSLog(@"--------[ViewController prefersStatusBarHidden]--------");
    return self.statusBarHidden;
    //return YES;
}

-(UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationFade;
}




@end
