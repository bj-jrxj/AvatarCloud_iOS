


Pod::Spec.new do |s|

  s.name             = 'AvatarCloudSDK'
  s.version          = '1.0.0'
  s.summary          = '开发者可以将云头像SDK集成进自有应用中，实现自定义头像、智能生成头像、保存头像等功能。平台注册用户可进入云头像选择海量原创IP头像，还可以沉浸式体验DIY头像带来的乐趣，不再为选择头像开放相册权限而焦虑。'
  s.homepage         = 'https://github.com/bj-jrxj/AvatarCloud_iOS'
  s.description      = <<-DESC
                       头像云SDK_iOS
                       DESC

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bj-jrxj' => 'denghua@msn.com' }
  s.source           = { :git => 'https://github.com/bj-jrxj/AvatarCloud_iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'AvatarCloudSDK/AvatarCloudSDK.framework/Headers/*'
  s.vendored_frameworks = "AvatarCloudSDK/AvatarCloudSDK.framework"
  s.resources = 'AvatarCloudSDK/AvatarCloudSDK.framework/AvatarCloudSDK.bundle'

end
