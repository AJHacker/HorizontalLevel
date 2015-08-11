//
//  ViewController.h
//  LEVEL
//
//  Created by Arihant Jain on 8/8/12.
//  Copyright (c) 2012 DMA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAccelerometerDelegate>{
    UIAccelerometer *acl;
    IBOutlet UILabel *angleLabel;
    IBOutlet UISlider *slider;
}


@end
