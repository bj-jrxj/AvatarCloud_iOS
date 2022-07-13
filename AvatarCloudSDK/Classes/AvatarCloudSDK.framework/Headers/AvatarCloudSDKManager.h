//
//  AvatarCloudSDKManager.h
//  AvatarCloudSDK
//
//  Created by king on 2022/6/7.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AvatarCloudListener <NSObject>
@optional

/**
 * 失败信息
 */
- (void)avatarCloudError:(NSDictionary *)resultDic;

@end

@interface AvatarCloudSDKManager : NSObject

//default NO 设置YES时，cornerRadius无效
@property (nonatomic, assign) BOOL isCircle;
//default 24
@property (nonatomic, assign) CGFloat cornerRadius;
//default 60
@property (nonatomic, assign) NSTimeInterval timeoutInterval;

+ (void)initWithClient_id:(NSString *)client_id client_secret:(NSString *)client_secret complete:(void(^_Nullable)(NSDictionary * _Nonnull resultDic))complete;

+ (nonnull instancetype)sharedInstance;
- (void)initWithParentController:(id)viewController animated:(BOOL)animated;
- (void)getImage:(void(^)(UIImage *image))imageBlock;
- (void)getImageData:(void(^)(NSData *imageData))imageBlock;
- (void)addAvatarCloudListener:(id<AvatarCloudListener>)listener;
- (void)removeAvatarCloudListener;
+ (void)clearImageCache;

@end

NS_ASSUME_NONNULL_END
