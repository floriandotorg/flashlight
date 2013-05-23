//
//  FYDFlipsideViewController.m
//  flash
//
//  Created by Florian Kaiser on 23.05.13.
//  Copyright (c) 2013 Florian Kaiser. All rights reserved.
//

#import "FYDFlipsideViewController.h"

@interface FYDFlipsideViewController ()

@end

@implementation FYDFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Actions

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleTap:(UITapGestureRecognizer *)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
