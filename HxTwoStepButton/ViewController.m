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

    
    self.tsButton = [[HxTwoStepButton alloc] initWithFrame:CGRectMake(10,200,100,30)];
    [self.tsButton setTitle:@"Touch Me" forState:UIControlStateNormal];
    
    [self.tsButton setConfirmationString:@"You Sure?"];
    [self.tsButton setConfirmationColor:[UIColor blueColor]];
    [self.tsButton setDelay:5.0];
    [self.tsButton setDelegate:self];
    
    [self.tsButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.tsButton];
    
    
    
    //
    [self.ibTwoStepButton setConfirmationColor:[UIColor yellowColor]];
    [self.ibTwoStepButton setDelay:0.5];
    
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

-(void)buttonDidCancelConfirmation:(id)sender{
    NSLog(@"Confirmation cancelled...");
}

@end
