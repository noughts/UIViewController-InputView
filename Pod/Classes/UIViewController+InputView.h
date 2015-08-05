//
//  UIViewController+InputView.h
//  Pods
//
//  Created by noughts on 2015/08/05.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController (InputView)

/// 自身のviewをinputViewに設定した状態での高さを設定します。
-(void)setHeight:(NSUInteger)height;

/// 自身のviewをinputViewに設定した状態での高さを設定します。
-(void)setHeight:(NSUInteger)height animated:(BOOL)animated;

/// 自身のviewをinputViewに設定した状態での高さを設定します。
-(void)setHeight:(NSUInteger)height animated:(BOOL)animated completion:(void (^)(BOOL finished))completion;

@end
