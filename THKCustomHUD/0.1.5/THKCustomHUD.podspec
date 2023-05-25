#
# Be sure to run `pod lib lint SnsHUDUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCustomHUD'
  s.version          = '0.1.5'
  s.summary          = 'A short description of THKCustomHUD.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "自定义的类似MBProgressHUD效果的hud组件"

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nigel.ning' => 'nigel.ning@corp.to8to.com' }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "bd9d3d85"}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'THKCustomHUD/Pod/Classes/*.{h,m}'
  s.subspec 'THKCustomHUD' do |hud|
    hud.source_files = 'THKCustomHUD/Pod/Classes/THKCustomHUD/*.{h,m}', 'THKCustomHUD/Pod/Classes/THKCustomHUD/Private/*.{h,m}', 'THKCustomHUD/Pod/Classes/THKCustomHUD/LoadingAnimateView/*.{h,m}'
    hud.private_header_files = "THKCustomHUD/Pod/Classes/THKCustomHUD/Private/THKCustomHUDContentView.h"  
  end
  
  s.subspec 'THKSnsHUD' do |snsHud|
    snsHud.source_files = 'THKCustomHUD/Pod/Classes/THKSnsHUD/*.{h,m}'
  end

  # THKCustomHUDAssets 后续不要随便修改名字，pod库内相关图片数据读取的Bundle名是固定写死为THKCustomHUDAssets.bundle
  s.resource_bundles = {
    'THKCustomHUDAssets' => ['THKCustomHUD/Pod/Assets/*.{png,json}','THKCustomHUD/readme.md']
  }
  s.prefix_header_contents = '#import "THKCustomHUD.h"'
  # s.public_header_files = 'Pod/Classes/xxxx.h'
  s.frameworks = 'UIKit', 'Foundation', 'AVFoundation'
  
  s.dependency 'Masonry', '1.1.0'
  s.dependency 'Lottie', '2.5.3'
  
end
