//
//  UIViewController+InputView.m
//  Pods
//
//  Created by noughts on 2015/08/05.
//
//

#import "UIViewController+InputView.h"
#import "FrameAccessor.h"

@implementation UIViewController (InputView)

-(void)setHeight:(NSUInteger)height animated:(BOOL)animated{
	if( NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1 ){
		/// iOS8 以降
		UIView* container = self.view.superview.superview;
		NSLayoutConstraint* heightConstraint = [self heightConstraintOfView:container];
//		NSLog( @"%@", container );
//		NSLog( @"%@", heightConstraint );
		[UIView animateWithDuration:0 delay:0 options:(7<<16) animations:^{
			heightConstraint.constant = height;
			[container layoutIfNeeded];
		} completion:^(BOOL finished) {
			
		}];
	} else {
		/// iOS7 以前
		self.view.height = height;
	}
}


/// 高さ制約を返す
-(NSLayoutConstraint*)heightConstraintOfView:(UIView*)view{
	for (NSLayoutConstraint* constraint in view.constraints) {
		if( constraint.firstAttribute == NSLayoutAttributeHeight && constraint.secondAttribute == NSLayoutAttributeNotAnAttribute ){
			return constraint;
		}
	}
	return nil;
}


@end
