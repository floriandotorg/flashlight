//
//  FYDMainViewController.m
//  flash
//
//  Created by Florian Kaiser on 23.05.13.
//  Copyright (c) 2013 Florian Kaiser. All rights reserved.
//

#import "FYDMainViewController.h"

@interface FYDMainViewController ()

@property (strong) UITapGestureRecognizer *gestureRecognizer;

@end

@implementation FYDMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	self.gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    self.gestureRecognizer.numberOfTapsRequired = 2;

    [self.view addGestureRecognizer:self.gestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

-(void)handleTap
{
    FYDFlipsideViewController *controller = [[FYDFlipsideViewController alloc] initWithNibName:@"FYDFlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)flipsideViewControllerDidFinish:(FYDFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
