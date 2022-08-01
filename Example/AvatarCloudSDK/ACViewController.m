//
//  ACViewController.m
//  AvatarCloudSDK
//
//  Created by bj-jrxj on 07/07/2022.
//  Copyright (c) 2022 bj-jrxj. All rights reserved.
//

#import "ACViewController.h"
#import <AvatarCloudSDK/AvatarCloudSDK.h>

#define ScreenWidth [[UIScreen mainScreen] bounds].size.width

@interface ACViewController ()

@property (nonatomic, strong) UIImageView *avatarView;

@end

@implementation ACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake((ScreenWidth - 200) / 2., 100, 200, 200)];
    avatarImageView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:avatarImageView];
    self.avatarView = avatarImageView;
    avatarImageView.userInteractionEnabled = YES;
    [avatarImageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickImage:)]];
}

- (void)clickImage:(UIGestureRecognizer *)gesture
{
    [[AvatarCloudSDKManager sharedInstance] initWithParentController:self animated:YES];
    [[AvatarCloudSDKManager sharedInstance] getImage:^(UIImage * _Nonnull image) {
        self.avatarView.image = image;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
