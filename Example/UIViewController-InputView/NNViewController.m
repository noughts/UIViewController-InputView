//
//  NNViewController.m
//  UIViewController-InputView
//
//  Created by Koichi Yamamoto on 08/05/2015.
//  Copyright (c) 2015 Koichi Yamamoto. All rights reserved.
//

#import "NNViewController.h"
#import "InputNC.h"
#import <UIViewController+InputView.h>

@implementation NNViewController{
	__weak IBOutlet UITextField* _tf;
	InputNC* _input_nc;
}

- (void)viewDidLoad{
    [super viewDidLoad];

	_input_nc = [self.storyboard instantiateViewControllerWithIdentifier:@"InputNC"];
	_tf.inputView = _input_nc.view;
}


-(IBAction)show:(id)sender{
	[_tf becomeFirstResponder];
	[_input_nc setHeight:400 animated:YES];
}
-(IBAction)hide:(id)sender{
	[_tf resignFirstResponder];
}
-(IBAction)changeHeight:(id)sender{
	[_input_nc setHeight:200 animated:YES];
}


@end
