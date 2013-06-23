//
//  HxTwoStepButton.h
//  HxTwoStepButton
//
//  Created by Antonio Perez on 2013-06-23.
//  Copyright (c) 2013 Hexperimental. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HxTwoStepButtonDelegate;

@interface HxTwoStepButton : UIButton

@property float delay;
@property (nonatomic,retain) NSString *confirmationString;
@property (nonatomic,retain) UIColor  *confirmationColor;
@property (nonatomic,assign) IBOutlet id <HxTwoStepButtonDelegate> delegate;

@end

@protocol HxTwoStepButtonDelegate <NSObject>

- (void)buttonDidEnterConfirmation:(id)sender;
- (void)buttonDidCancelConfirmation:(id)sender;

@end