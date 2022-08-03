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

@interface ACViewController () <AvatarCloudListener>

@property (nonatomic, strong) UIImageView *bgView;
@property (nonatomic, strong) UIImageView *avatarView;

@end

@implementation ACViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[AvatarCloudSDKManager sharedInstance] addAvatarCloudListener:self];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[UIView new]];
    self.view.backgroundColor = [UIColor whiteColor];
    if (@available(iOS 11.0, *)) {
        self.navigationItem.backButtonTitle = @"";
    } else {
        // Fallback on earlier versions
    }
        
    self.navigationController.navigationBarHidden = NO;
    
    self.bgView = [[UIImageView alloc] initWithFrame:CGRectMake(37, 88, 240, 145)];
    self.bgView.image = [UIImage imageNamed:@"touxiang_bg"];
    self.bgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.bgView];
    
    CGFloat avatarWidth = ScreenWidth - 110 * 2;
    
    self.avatarView = [[UIImageView alloc] initWithFrame:CGRectMake(110., 300, avatarWidth, avatarWidth)];
    self.avatarView.layer.cornerRadius = 24;
    self.avatarView.layer.masksToBounds = YES;
    self.avatarView.contentMode = UIViewContentModeScaleAspectFill;
    self.avatarView.userInteractionEnabled = YES;
    self.avatarView.backgroundColor = [UIColor colorWithRed:244/255. green:244/255. blue:244/255. alpha:1.];
    self.avatarView.image = [UIImage imageNamed:@"touxiang"];
    [self.view addSubview:self.avatarView];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickAvatar)];
    [self.avatarView addGestureRecognizer:gesture];
    
    UILabel *infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 300 + avatarWidth + 5, ScreenWidth, 20)];
    infoLabel.text = @"点击更换头像";
    infoLabel.textAlignment = NSTextAlignmentCenter;
    infoLabel.textColor = [UIColor lightGrayColor];
    infoLabel.font = [UIFont systemFontOfSize:13];
    [self.view addSubview:infoLabel];
    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(20, 550, ScreenWidth - 40, 1)];
    lineView.backgroundColor = [UIColor colorWithRed:244/255. green:244/255. blue:244/255. alpha:1.];
    [self.view addSubview:lineView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 590, ScreenWidth - 40, 50);
    button.layer.cornerRadius = 12.;
    button.layer.masksToBounds = YES;
    [button setTitle:@"完   成" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:16]];
    button.backgroundColor = [UIColor colorWithRed:17/255. green:17/255. blue:17/255. alpha:1.];
    [self.view addSubview:button];
}


- (void)clickAvatar
{
    __weak typeof(self) weakSelf = self;
    AvatarCloudSDKManager *avatarCloudSDKManager = [AvatarCloudSDKManager sharedInstance];
    [avatarCloudSDKManager initWithParentController:self animated:YES];
//    avatarCloudSDKManager.isCircle = YES;
    [[AvatarCloudSDKManager sharedInstance] getImage:^(UIImage * _Nonnull image) {
        weakSelf.avatarView.image = image;
    }];
//    [[AvatarCloudSDKManager sharedInstance] getImageData:^(NSData * _Nonnull imageData) {
//        weakSelf.avatarView.image = [UIImage imageWithData:imageData];
//    }];
}

- (void)avatarCloudError:(NSDictionary *)resultDic
{
    NSLog(@"avatarCloudError %@", resultDic);
}

- (void)dealloc
{
    [[AvatarCloudSDKManager sharedInstance] removeAvatarCloudListener];
}


@end
