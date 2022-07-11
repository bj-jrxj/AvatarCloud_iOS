# AvatarCloudSDK

[![CI Status](https://img.shields.io/travis/bj-jrxj/AvatarCloudSDK.svg?style=flat)](https://travis-ci.org/bj-jrxj/AvatarCloudSDK)
[![Version](https://img.shields.io/cocoapods/v/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)
[![License](https://img.shields.io/cocoapods/l/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)
[![Platform](https://img.shields.io/cocoapods/p/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)


* **具体内测申请流程请访问官网**


|SDK|下载地址|集成指引|
|-|-------:|:------:|
|iOS|https://github.com/bj-jrxj/AvatarCloud_iOS|[pod集成](#SDK集成)<br>[手动集成](#手动集成)|
|Adnroid|https://github.com/bj-jrxj/AvatarCloud_Android|常规集成|




### 安装

---

#### SDK集成

###### [cocoaPods](https://cocoapods.org) 集成


```
platform :ios, '9.0'
source 'https://github.com/CocoaPods/Specs.git'

target 'App' do
pod 'AvatarCloudSDK'
end

```

###### 手动集成
  * 在demo工程路径下的framework复制到业务工程
  * 在工程的 Other Linker Flags 中添加 -ObjC 参数

### 使用
---

* 配置**appID** 和 **secretID**

* 在工程的AppDelegate.m文件导入头文件，并初始化

```
#import <AvatarCloudSDK/AvatarCloudSDK.h>
	
[AvatarCloudSDKManager initWithClient_id:@"clientId" client_secret:@"clientSecret"];

```

* 调用

```
#import <AvatarCloudSDK/AvatarCloudSDK.h>

//controller:跳转界面容器。 animated:跳转动画
[[AvatarCloudSDKManager sharedInstance] initWithParentController:self animated:YES];

//设置sdk内部界面头像圆角尺寸
[AvatarCloudSDKManager sharedInstance].cornerRadius = 24;

//默认 NO 设置YES时，cornerRadius无效
[AvatarCloudSDKManager sharedInstance].isCircle = NO;

//返回图片尺寸大小 默认300
[AvatarCloudSDKManager sharedInstance].imageWidth = 300;

//获取生成的图片，返回对象类型UIImage
[[AvatarCloudSDKManager sharedInstance] getImage:^(UIImage * _Nonnull image) {
    weakSelf.avatarView.image = image;
}];

//获取生成的图片，返回对象类型NSData
[[AvatarCloudSDKManager sharedInstance] getImageData:^(NSData * _Nonnull imageData) {
	weakSelf.avatarData = imageData;
}];
```

* 更多高级功能配置请参考demo工程相关文档





