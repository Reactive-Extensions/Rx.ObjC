//
//  RxDemoAppDelegate.h
//  RxDemo
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
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

