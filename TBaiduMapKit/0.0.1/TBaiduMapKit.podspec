#
# Be sure to run `pod lib lint TBaiduMapKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBaiduMapKit'
  s.version          = '0.0.1'
  s.summary          = '针对百度地图SDK BaiduMapKit 作的二次封装，去除了openssl库对应的两个静态库.a文件的直接引用(原工程已显式引入了openssl，会有冲突)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/nigel.ning/TBaiduMapKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nigel.ning' => 'nigel.ning@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => 'f76b459' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TBaiduMapKit/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'TBaiduMapKit' => ['TBaiduMapKit/Assets/*.png']
  # }
  
  s.vendored_frameworks = [
      'TBaiduMapKit/Classes/6.3.0/BaiduMapAPI_Search.framework',
      'TBaiduMapKit/Classes/6.3.0/BaiduMapAPI_Utils.framework',
      'TBaiduMapKit/Classes/6.3.0/BaiduMapAPI_Base.framework',
      'TBaiduMapKit/Classes/6.3.0/BaiduMapAPI_Cloud.framework',
      'TBaiduMapKit/Classes/6.3.0/BaiduMapAPI_Map.framework',
  ]
  
  s.resources = 'TBaiduMapKit/Classes/6.3.0/BaiduMapAPI_Map.framework/mapapi.bundle'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreGraphics', 'CoreLocation', 'QuartzCore', 'Security', 'SystemConfiguration', 'OpenGLES', 'Accelerate'
  s.libraries = 'z','c++', 'sqlite3.0'
  # s.dependency 'AFNetworking', '~> 2.3'
end
