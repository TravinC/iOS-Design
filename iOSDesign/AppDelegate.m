//
//  AppDelegate.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "AppDelegate.h"
#import "cwlDesignViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self customizeInterface];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    cwlDesignViewController *rootVC = [[cwlDesignViewController alloc] init];
    UINavigationController *nav_rootVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [self.window setRootViewController:nav_rootVC];
    [self.window makeKeyAndVisible];
    
    [NSThread sleepForTimeInterval:2.f];
    return YES;
}

- (void)customizeInterface {
    
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    
    [navigationBarAppearance setTintColor:[UIColor blackColor]];
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: [UIFont systemFontOfSize:18],
                                     NSForegroundColorAttributeName: [UIColor blackColor],
                                     };
    [navigationBarAppearance setTitleTextAttributes:textAttributes];
}

@end
