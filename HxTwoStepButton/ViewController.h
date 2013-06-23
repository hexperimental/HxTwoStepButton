//
//  ViewController.h
//  HxTwoStepButton
//
//  Created by Antonio Perez on 2013-06-23.
//  Copyright (c) 2013 Hexperimental. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HxTwoStepButton.h"

@interface ViewController : UIViewController<HxTwoStepButtonDelegate>

@property(nonatomic,retain)  IBOutlet HxTwoStepButton *twoStepButton;

@end
