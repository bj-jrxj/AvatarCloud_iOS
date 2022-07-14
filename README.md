# AvatarCloudSDK

[![CI Status](https://img.shields.io/travis/bj-jrxj/AvatarCloudSDK.svg?style=flat)](https://travis-ci.org/bj-jrxj/AvatarCloudSDK)
[![Version](https://img.shields.io/cocoapods/v/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)
[![License](https://img.shields.io/cocoapods/l/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)
[![Platform](https://img.shields.io/cocoapods/p/AvatarCloudSDK.svg?style=flat)](https://cocoapods.org/pods/AvatarCloudSDK)


* **具体内测申请流程请访问官网: https://fc.faceface2.com**


|SDK|下载地址|集成指引|
|-|-------:|:------:|
|iOS|https://github.com/bj-jrxj/AvatarCloud_iOS|[pod集成](#SDK集成)<br>[手动集成](#手动集成)|
|Adnroid|https://github.com/bj-jrxj/AvatarCloud_Android|常规集成|




## 安装

---

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



## 使用
---

#### 配置

* 配置**appID** 和 **secretID**， `appID` 和 `secretID` 请在[官网](https://fc.faceface2.com)申请

* 在工程的AppDelegate.m文件导入头文件，并初始化

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




