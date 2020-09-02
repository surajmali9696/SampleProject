//
//  AppDelegate.m
//  SampleAppOne
//
//  Created by AryaOmnitalk MDA on 12/02/20.
//  Copyright © 2020 AryaOmnitalk MDA. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIStoryboard *storyboard = self.window.rootViewController.storyboard;

    UIViewController *rootViewController= [storyboard instantiateViewControllerWithIdentifier:@"home"];
//    UINavigationController *NVC = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
