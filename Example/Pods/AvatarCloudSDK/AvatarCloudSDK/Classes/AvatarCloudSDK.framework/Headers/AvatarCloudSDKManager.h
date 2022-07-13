//
//  AvatarCloudSDKManager.h
//  AvatarCloudSDK
//
//  Created by king on 2022/6/7.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AvatarCloudSDKManager : NSObject

//default 300
@property (nonatomic, assign) CGFloat imageWidth;
//default NO 设置YES时，cornerRadius无效
@property (nonatomic, assign) BOOL isCircle;
//default 24
@property (nonatomic, assign) CGFloat cornerRadius;

+ (void)initWithClient_id:(NSString *)client_id client_secret:(NSString *)client_secret;

+ (nonnull instancetype)sharedInstance;
- (void)initWithParentController:(id)viewController animated:(BOOL)animated;
- (void)getImage:(void(^)(UIImage *image))imageBlock;
- (void)getImageData:(void(^)(NSData *imageData))imageBlock;
+ (void)clearImageCache;

@end

NS_ASSUME_NONNULL_END
