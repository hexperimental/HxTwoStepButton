//
//  HxTwoStepButton.m
//  HxTwoStepButton
//
//  Created by Antonio Perez on 2013-06-23.
//  Copyright (c) 2013 Hexperimental. All rights reserved.
//

#import "HxTwoStepButton.h"


@interface HxTwoStepButton()
@property BOOL isHot;
@property (nonatomic, retain) NSString *bufferLabel;
@property (nonatomic, retain) UIColor  *bufferColor;
@property (nonatomic, retain) NSTimer *confirmationTimer;
@end



@implementation HxTwoStepButton



- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setCustomAttributesForInit];
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setCustomAttributesForInit];
    }
    return self;
}


-(void)setCustomAttributesForInit{
    self.delay = 2.0;
    self.isHot = NO;
    self.confirmationString = @"Sure?";
}


- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    if(self.isHot){
        [self cancelConfirm];
        [super sendAction:action to:target forEvent:event];
    }else{
        self.isHot = YES;
        self.bufferColor = self.backgroundColor;
        self.bufferLabel = self.titleLabel.text;
        [self setBackgroundColor:self.confirmationColor];
        [self setTitle:self.confirmationString forState:UIControlStateNormal];
        
        [self.delegate buttonDidEnterConfirmation:self];
        
        if(self.delay>0){
            self.confirmationTimer = [NSTimer scheduledTimerWithTimeInterval:self.delay
                                                                      target:self
                                                                    selector:@selector(cancelConfirm)
                                                                    userInfo:nil
                                                                     repeats:NO];
        }
    }
}

-(void)cancelConfirm{
    [self.confirmationTimer invalidate];
    self.isHot = NO;
    [self setBackgroundColor:self.bufferColor];
    [self setTitle:self.bufferLabel forState:UIControlStateNormal];
}

@end
