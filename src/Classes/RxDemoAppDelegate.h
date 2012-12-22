//
//  RxDemoAppDelegate.h
//  RxDemo
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <UIKit/UIKit.h>

@class RxDemoViewController;

@interface RxDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RxDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RxDemoViewController *viewController;

@end

