//
//  ParallaxDemoViewController.m
//  ParallaxDemo
//
//  Created by Jacob Jennings on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ParallaxDemoViewController.h"

#define BOTTOM_FACTOR 0.6
#define MIDDLE_FACTOR 0.8
#define TOP_FACTOR 1.0
#define SPEED 6

@implementation ParallaxDemoViewController

@synthesize yellowClouds;
@synthesize greenClouds;
@synthesize pinkClouds;
@synthesize timer;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (void)dealloc
{
    [self.timer invalidate];
    self.timer = nil;
    self.yellowClouds = nil;
    self.greenClouds = nil;
    self.pinkClouds = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Timers are tricky little demons when it comes to ownership
    NSTimer *animationTimer = [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(moveClouds) userInfo:nil repeats:YES];
    self.timer = animationTimer;
    [self.timer fire];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [self.timer invalidate];
    self.timer = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)moveClouds {
    yellowClouds.center = CGPointMake(yellowClouds.center.x+SPEED*TOP_FACTOR, yellowClouds.center.y);
    greenClouds.center = CGPointMake(greenClouds.center.x+SPEED*MIDDLE_FACTOR, greenClouds.center.y);
    pinkClouds.center = CGPointMake(pinkClouds.center.x+SPEED*BOTTOM_FACTOR, pinkClouds.center.y);
}

@end
