//
//  LYViewController.m
//  LYAlertControllerShower
//
//  Created by ButtFly on 02/13/2019.
//  Copyright (c) 2019 ButtFly. All rights reserved.
//

#import "LYViewController.h"
#import <LYAlertControllerShower/LYAlertControllerShower.h>

@interface LYViewController ()

@end

@implementation LYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"alert" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn sizeToFit];
    btn.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)btnClick:(UIButton *)sender {
    [LYAlertControllerShower ly_showAlertViewControllerWithTitle:@"s" message:@"a" cancelButtonTitle:nil otherButtonTitles:@[@"1", @"2", @"3"] presentingViewController:self clickHandle:^(NSInteger buttonIndex, NSString * _Nonnull buttonTitle) {
        NSLog(@"%@", buttonTitle);
    }];
}

@end
