//
//  ACViewController.m
//  AvatarCloudSDK
//
//  Created by bj-jrxj on 07/07/2022.
//  Copyright (c) 2022 bj-jrxj. All rights reserved.
//

#import "ACViewController.h"
#import <AvatarCloudSDK/AvatarCloudSDK.h>

@interface ACViewController ()

@end

@implementation ACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)]];
}

- (void)click
{
    [[AvatarCloudSDKManager sharedInstance] initWithParentController:self animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
