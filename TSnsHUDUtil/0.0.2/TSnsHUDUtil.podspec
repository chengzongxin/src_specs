#
# Be sure to run `pod lib lint SnsHUDUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TSnsHUDUtil'
  s.version          = '0.0.2'
  s.summary          = 'A short description of TSnsHUDUtil.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "基于MBProgressHUD的扩展效果库"

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nigel.ning' => 'nigel.ning@corp.to8to.com' }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.7.99" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TSnsHUDUtil/Pod/Classes/*.{h,m}'
  # TSnsHUDUtilAssets 后续不要随便修改名字，pod库内相关图片数据读取的Bundle名是固定写死为TSnsHUDUtilAssets.bundle
  s.resource_bundles = {
    'TSnsHUDUtilAssets' => ['TSnsHUDUtil/Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import "TSnsHUDUtil.h"'
  # s.public_header_files = 'Pod/Classes/SnsHUDUtil.h'
  s.frameworks = 'UIKit'
  s.dependency 'MBProgressHUD', '~> 0.9.1'
  s.dependency 'Masonry', '~> 1.1.0'
end
