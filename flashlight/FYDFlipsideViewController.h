//
//  FYDFlipsideViewController.h
//  flash
//
//  Created by Florian Kaiser on 23.05.13.
//  Copyright (c) 2013 Florian Kaiser. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FYDFlipsideViewController;

@protocol FYDFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FYDFlipsideViewController *)controller;
@end

@interface FYDFlipsideViewController : UIViewController

@property (unsafe_unretained, nonatomic) id <FYDFlipsideViewControllerDelegate> delegate;

@end
