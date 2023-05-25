#
# Be sure to run `pod lib lint THKCaseAudioExplainKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCaseAudioExplainKit'
  s.version          = '0.3.0'
  s.summary          = '这个版本用于组件库，正常的还是使用0.2.x'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => "bd9d3d85" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.static_framework = true

  s.source_files = 'THKCaseAudioExplainKit/THKCaseAudioExplainKit/Classes/**/*'
  s.public_header_files = 'THKCaseAudioExplainKit/THKCaseAudioExplainKit/Classes/**/*.h'
  s.subspec 'Resources' do |rs|
    rs.resource_bundles = {
      'THKCaseAudioExplainKit' => ['THKCaseAudioExplainKit/THKCaseAudioExplainKit/Assets/*.png','THKCaseAudioExplainKit/THKCaseAudioExplainKit/Assets/*.mp3','THKCaseAudioExplainKit/README.md']
    }
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # ================== 音视频相关SDK ===================
  # 腾讯直播SDK :podspec => 'https://liteav.sdk.qcloud.com/pod/liteavsdkspec/TXLiteAVSDK_Professional.podspec'
  #s.dependency 'TXLiteAVSDK_Professional'
  s.dependency 'TMImageBrowser' #, '0.1.4'
  s.dependency 'TIMKit'
  s.dependency 'TRouter' #, '0.1.9'
  s.dependency 'THKBaseNetwork'#, '0.2.9'
  s.dependency 'TMToast'

  s.prefix_header_contents = <<-DESC
  #import "Masonry.h"
  #import <ReactiveObjC/ReactiveObjC.h>
                                      DESC

end