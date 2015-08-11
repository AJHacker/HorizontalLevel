//
//  ViewController.m
//  LEVEL
//
//  Created by Arihant Jain on 8/8/12.
//  Copyright (c) 2012 DMA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration{
    NSNumber *angle = [[NSNumber alloc]initWithFloat:(180.0/3.1415926)*acos(-1*[acceleration y])];
                       NSString *anglest = [[NSString alloc] initWithFormat:@"%f",[angle floatValue]];
                       [angleLabel setText:anglest];
    [slider setValue:[angle floatValue]];

                       }
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    acl = [UIAccelerometer sharedAccelerometer];
    acl.delegate = self;
    [acl setUpdateInterval:.25];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
