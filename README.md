# AvatarCloudSDK

[![CI Status](https://img.shields.io/travis/bj-jrxj/AvatarCloudSDK.svg?style=flat)](https://travis-ci.org/bj-jrxj/AvatarCloudSDK)
[![Version](https://img.shields.io/cocoapods/v/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)
[![License](https://img.shields.io/cocoapods/l/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)
[![Platform](https://img.shields.io/cocoapods/p/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)



---
## 介绍

### [云头像平台](https://fc.faceface2.com)

云头像平台提供海量免费原创IP头像，包含卡通、二次元、像素、写实等丰富多元的风格，实现自定义头像、智能生成头像、保存头像等独特功能。

通过与国内知名影视、动画、潮玩等行业头部公司合作，创作出以IP形象为核心的头像，深受用户喜爱。已帮助众多知名央国企平台升级原创IP头像服务。

本平台所使用的头像及美术素材，均已签订协议并获得授权，平台内的头像可直接作为用户头像使用。如需二次编辑或衍生品开发，请联系[**云头像平台**](https://fc.faceface2.com)。

### 需求痛点
基本所有的应用都需要头像.  对于头像,大家的做法都是用户上传一张图片的方式, 如下图:

![image](http://oss.faceface2.com/facecloud/pic/3ecaAa.jpeg)

这样的体验方式,用户需要时刻在相册中保留一样图片,并记住在哪里.

为什么没有一种方式,为用户提供很好看的头像, 直接让用户选择呢? 于是就有了该项目.


### 云头像截图
![image](http://oss.faceface2.com/facecloud/pic/6dd0f7fa-46f8-4782-9ac8-ce8d3fb49c82.png)
![image](http://oss.faceface2.com/facecloud/pic/34612097-e78e-49b1-9347-2a2018fc95fe.png)
![image](http://oss.faceface2.com/facecloud/pic/5ae8db45-e2b5-49aa-9199-2b9f91a6f4ec.png)

### 申请流程
 请访问官网: https://fc.faceface2.com


|SDK|下载地址|集成指引|
|-|-------:|:------:|
|iOS|https://github.com/bj-jrxj/AvatarCloud_iOS|[pod集成](#SDK集成)<br>[手动集成](#手动集成)|
|Adnroid|https://github.com/bj-jrxj/AvatarCloud_Android|常规集成|



---
## 安装


### SDK集成

#### [cocoaPods](https://cocoapods.org) 集成

1.本地项目文件夹下，修改`Podfile`文件

```
platform :ios, '9.0'
source 'https://github.com/CocoaPods/Specs.git'

target 'App' do
pod 'AvatarCloudSDK'
end
```

2.终端执行命令，加载AvatarCloudSDK
```
pod install
```

3.如果安装失败，请更新cocoapods的资源配置信息
```
pod repo update
```

#### 手动集成
  * 在demo工程路径下的`AvatarCloudSDK.framework`和资源文件`AvatarCloudSDK.bundle`复制到业务工程
  * 在工程的 Other Linker Flags 中添加 -ObjC 参数



---
## 使用


#### 配置

* 配置**clientId** 和 **clientSecret**， `clientId` 和 `clientSecret` 请在[官网](https://fc.faceface2.com)申请

* 在工程的AppDelegate.m文件导入头文件，并初始化

* 在 info.plist 文件中添加一个子项目 App Transport Security Settings，然后在其中添加一个 key：Allow Arbitrary Loads，其值为YES。

```
#import <AvatarCloudSDK/AvatarCloudSDK.h>
	
[AvatarCloudSDKManager initWithClient_id:@"clientId" client_secret:@"clientSecret"];
```

#### 调用

```
#import <AvatarCloudSDK/AvatarCloudSDK.h>

//controller:跳转界面容器。 animated:跳转动画
[[AvatarCloudSDKManager sharedInstance] initWithParentController:self animated:YES];

//设置sdk内部头像圆角尺寸
[AvatarCloudSDKManager sharedInstance].cornerRadius = 24;

//默认NO，设置YES时，cornerRadius无效
[AvatarCloudSDKManager sharedInstance].isCircle = NO;

//获取生成的图片，返回对象类型UIImage
[[AvatarCloudSDKManager sharedInstance] getImage:^(UIImage * _Nonnull image) {
    weakSelf.avatarView.image = image;
}];

//获取生成的图片，返回对象类型NSData
[[AvatarCloudSDKManager sharedInstance] getImageData:^(NSData * _Nonnull imageData) {
    weakSelf.avatarView.image = [UIImage imageWithData:imageData];
}];
```

* 更多高级功能配置请参考demo工程相关文档

