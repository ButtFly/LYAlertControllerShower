//
//  LYAlertControllerShower.h
//  LYAlertControllerShower_Example
//
//  Created by 余河川 on 2019/2/13.
//  Copyright © 2019 ButtFly. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LYAlertControllerShower : NSObject


/**
 <#Description#>

 @param title <#title description#>
 @param message <#message description#>
 @param cancelButtonTitle <#cancelButtonTitle description#>
 @param otherButtonTitles <#otherButtonTitles description#>
 @param presentingViewController <#presentingViewController description#>
 @param clickHandle 取消是 0，其他依次加 1
 */
+ (void)ly_showAlertViewControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message cancelButtonTitle:(nullable NSString *)cancelButtonTitle otherButtonTitles:(nullable NSArray<NSString *> *)otherButtonTitles presentingViewController:(UIViewController *)presentingViewController clickHandle:(void(^)(NSInteger buttonIndex, NSString *buttonTitle))clickHandle;

@end

NS_ASSUME_NONNULL_END
