//
//  InputVC1.m
//  UIViewController-InputView
//
//  Created by noughts on 2015/08/05.
//  Copyright (c) 2015年 Koichi Yamamoto. All rights reserved.
//

#import "InputVC1.h"
#import <UIViewController+InputView.h>

@implementation InputVC1{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(IBAction)onChangeButtonTap:(id)sender{
	[self.navigationController setHeight:100 animated:YES];
}


@end
