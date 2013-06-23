# HxTwoStepButton
**UIButton subclass with a confirmation step before triggering the button's action**

## How to use

Include HxTwoStepButton .h and .m files into your project. 

Assign "HxTwoStepButton" as custom class to your UIButton on IB or create it Programmatically.

``` objective-c
HxTwoStepButton *tsButton = [[HxTwoStepButton alloc] initWithFrame:CGRectMake(10,200,100,30)];
[tsButton setTitle:@"Touch Me" forState:UIControlStateNormal];
```


### Available settings

``` objective-c
//Text to display after the first tap
[tsButton setConfirmationString:@"You Sure?"];
//Background color for confirmation step
[tsButton setConfirmationColor:[UIColor redColor]];
//Time to delay the confirmation step before going back to normal
[tsButton setDelay:5.0];
//Setting the delegate
[tsButton setDelegate:self];
```

### Delegate

To tap into the extra step:

on the header file (.h)
``` objective-c
@interface [YOURCLASS] : UIViewController <HxTwoStepButtonDelegate>
```

on the implementation file (.m)

``` objective-c

-(void)buttonDidEnterConfirmation:(id)sender{
    NSLog(@"Waiting For confirmation...");
}

-(void)buttonDidCancelConfirmation:(id)sender{
    NSLog(@"Confirmation cancelled...");
}

```



## Contact

HxTwoStepButton is available under the MIT license. See the LICENSE file for more info.
- http://github.com/hexperimental
- http://hexperimental.com
