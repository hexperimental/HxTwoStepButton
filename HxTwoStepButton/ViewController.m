//
//  ViewController.m
//  HxTwoStepButton
//
//  Created by Antonio Perez on 2013-06-23.
//  Copyright (c) 2013 Hexperimental. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.twoStepButton setConfirmationColor:[UIColor yellowColor]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonPressed:(id)sender{
    NSLog(@"Click!");
}

#pragma mark HxTwoStepButtonDelegate

-(void)buttonDidEnterConfirmation:(id)sender{
    NSLog(@"Waiting For confirmation...");
}

@end
