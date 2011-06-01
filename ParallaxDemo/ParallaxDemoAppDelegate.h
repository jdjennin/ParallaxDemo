//
//  ParallaxDemoAppDelegate.h
//  ParallaxDemo
//
//  Created by Jacob Jennings on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ParallaxDemoViewController;

@interface ParallaxDemoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ParallaxDemoViewController *viewController;

@end
