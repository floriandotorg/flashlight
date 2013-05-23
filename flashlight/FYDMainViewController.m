//
//  FYDMainViewController.m
//  flash
//
//  Created by Florian Kaiser on 23.05.13.
//  Copyright (c) 2013 Florian Kaiser. All rights reserved.
//

#import "FYDMainViewController.h"

@interface FYDMainViewController ()

@end

@implementation FYDMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FYDFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)handleTap:(UITapGestureRecognizer *)sender
{
    FYDFlipsideViewController *controller = [[FYDFlipsideViewController alloc] initWithNibName:@"FYDFlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
