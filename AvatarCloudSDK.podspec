


Pod::Spec.new do |s|

  s.name             = 'AvatarCloudSDK'
  s.version          = '0.1.1'
  s.summary          = 'AvatarCloudSDK_iOS.'
  s.homepage         = 'https://github.com/bj-jrxj/AvatarCloud_iOS'
  s.description      = <<-DESC
                       头像云的iOS SDK
                       DESC

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bj-jrxj' => 'denghua@msn.com' }
  s.source           = { :git => 'https://github.com/bj-jrxj/AvatarCloud_iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'AvatarCloudSDK/AvatarCloudSDK.framework/Headers/*'
  s.vendored_frameworks = "AvatarCloudSDK/AvatarCloudSDK.framework"
  s.resources = 'AvatarCloudSDK/AvatarCloudSDK.framework/AvatarCloudSDK.bundle'

end
