//
//  AppDelegate.m
//  QiTestFramework
//
//  Created by wangdacheng on 2019/10/24.
//  Copyright © 2019 qihoo. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [_window setBackgroundColor:[UIColor whiteColor]];
    ViewController *controller = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    [nav.navigationBar setBarTintColor:[UIColor lightGrayColor]];
    nav.navigationBar.translucent = NO;
    [_window setRootViewController:nav];
    [_window makeKeyAndVisible];
    
    return YES;
}



@end
