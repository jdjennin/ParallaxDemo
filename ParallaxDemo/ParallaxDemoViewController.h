//
//  ParallaxDemoViewController.h
//  ParallaxDemo
//
//  Created by Jacob Jennings on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParallaxDemoViewController : UIViewController {
    IBOutlet UIView *yellowClouds;
    IBOutlet UIView *greenClouds;
    IBOutlet UIView *pinkClouds;
    
    NSTimer *timer;
}

@property (nonatomic, retain) IBOutlet UIView *yellowClouds;
@property (nonatomic, retain) IBOutlet UIView *greenClouds;
@property (nonatomic, retain) IBOutlet UIView *pinkClouds;
@property (nonatomic, retain) NSTimer *timer;

- (void)moveClouds;

@end
