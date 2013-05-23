//
//  FYDFlipsideViewController.m
//  flash
//
//  Created by Florian Kaiser on 23.05.13.
//  Copyright (c) 2013 Florian Kaiser. All rights reserved.
//

#import "FYDFlipsideViewController.h"

@interface FYDFlipsideViewController ()

@property (strong) UITapGestureRecognizer *gestureRecognizer;

@end

@implementation FYDFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    self.gestureRecognizer.numberOfTapsRequired = 2;
    
    [self.view addGestureRecognizer:self.gestureRecognizer];
}

#pragma mark - Actions
                            
-(void)handleTap
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
