//
//  FYDViewController.m
//  flashlight
//
//  Created by Florian on 16.05.13.
//  Copyright (c) 2013 Floyd UG (haftungsbeschränkt). All rights reserved.
//

#import "FYDViewController.h"

#import <AVFoundation/AVFoundation.h>

@interface FYDViewController ()

@end

@implementation FYDViewController

- (void) flashOn
{
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    if ([device hasTorch] && [device hasFlash])
    {
        [device lockForConfiguration:nil];    
        [device setTorchMode:AVCaptureTorchModeOn];
        [device unlockForConfiguration];
    }
}

-(void)applicationDidBecomeActive
{
    [self flashOn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
