#
# Be sure to run `pod lib lint THKEmptyTipView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKEmptyTipView'
  s.version          = '0.0.1'
  s.summary          = 'A short description of THKEmptyTipView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "空页面提示视图封装"

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nigel.ning' => 'nigel.ning@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => "eaed2b3"}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.2'

  s.source_files = 'THKEmptyTipView/Pod/Classes/*.{h,m}'
  s.subspec 'UIKit' do |ui|
    ui.source_files = 'THKEmptyTipView/Pod/Classes/UIKit/*.{h,m}'
  end
  s.subspec 'Category' do |catg|
    catg.source_files = 'THKEmptyTipView/Pod/Classes/Category/*.{h,m}'
  end
  s.subspec 'Config' do |cfg|
    cfg.source_files = 'THKEmptyTipView/Pod/Classes/Config/*.{h,m}'
  end
  # THKEmptyTipViewAssets 后续不要随便修改名字，pod库内相关图片数据读取的Bundle名是固定写死为THKEmptyTipViewAssets.bundle
  s.resource_bundles = {
    'THKEmptyTipViewAssets' => ['THKEmptyTipView/Pod/Assets/*.png']
  }

  s.prefix_header_contents = '#import "THKEmptyTipViewKit.h"'
   s.frameworks = 'UIKit', 'Foundation'
   s.dependency 'Masonry'
   
end
