#
# Be sure to run `pod lib lint AvatarCloudSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AvatarCloudSDK'
  s.version          = '0.1.0'
  s.summary          = 'AvatarCloudSDK_iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    头像云的iOS SDK
                       DESC

  s.homepage         = 'https://github.com/bj-jrxj/AvatarCloud_iOS'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bj-jrxj' => 'denghua@msn.com' }
  s.source           = { :git => 'https://github.com/bj-jrxj/AvatarCloud_iOS.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'AvatarCloudSDK/Classes/AvatarCloudSDK.framework/Headers/*'
  s.vendored_frameworks = "AvatarCloudSDK/Classes/AvatarCloudSDK.framework"
  s.resource_bundles = {
    'AvatarCloudSDK' => ['AvatarCloudSDK/Assets/AvatarCloudSDK.bundle']
  }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency '', ''
end
