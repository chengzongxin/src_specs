#
# Be sure to run `pod lib lint TBTShare.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTShare'
  s.version          = '0.0.4'
  s.summary          = '土巴兔分享'

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
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => 'bd9d3d85' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = 'TBTShare/Pod/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'TBTShare' => ['TBTShare/Assets/*.png']
  # }

  s.public_header_files = 'TBTShare/Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TencentOpenAPI-Mirror', '3.3.9' 
  s.dependency 'WechatOpenSDK', '1.8.5'
  s.dependency 'Weibo_SDK', '3.3.0'
end
