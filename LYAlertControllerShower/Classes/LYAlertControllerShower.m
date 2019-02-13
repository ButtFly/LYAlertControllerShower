//
//  LYAlertControllerShower.m
//  LYAlertControllerShower_Example
//
//  Created by 余河川 on 2019/2/13.
//  Copyright © 2019 ButtFly. All rights reserved.
//

#import "LYAlertControllerShower.h"

@implementation LYAlertControllerShower

+ (void)ly_showAlertViewControllerWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray<NSString *> *)otherButtonTitles presentingViewController:(UIViewController *)presentingViewController clickHandle:(void (^)(NSInteger, NSString * _Nonnull))clickHandle {
    
    NSAssert(title == nil || [title isKindOfClass:[NSString class]], @"title 参数类型错误");
    NSAssert(message == nil || [message isKindOfClass:[NSString class]], @"message 参数类型错误");
    NSAssert(cancelButtonTitle == nil || [cancelButtonTitle isKindOfClass:[NSString class]], @"cancelButtonTitle 参数类型错误");
    NSAssert(otherButtonTitles == nil || [otherButtonTitles isKindOfClass:[NSArray class]], @"otherButtonTitles 参数类型错误");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    NSInteger hasCancelBtn = 0;
    if (cancelButtonTitle != nil) {
        [alert addAction:[UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            clickHandle(0, action.title);
        }]];
        hasCancelBtn = 1;
    }
    [otherButtonTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull otherButtonTitle, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [alert addAction:[UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            clickHandle(idx + hasCancelBtn, action.title);
        }]];
        
    }];
    [presentingViewController presentViewController:alert animated:YES completion:nil];
    
}

@end
