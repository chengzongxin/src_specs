#
# Be sure to run `pod lib lint TBTCustomView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTCustomView'
  s.version          = '0.1.2'
  s.summary          = 'A short description of TBTCustomView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aaron.xun/TBTCustomView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aaron.xun' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :tag => "0.9.90" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TBTCustomView/Classes/**/*.{h,m}'
  
  s.resource_bundles = {
    'TBTCustomView' => ['TBTCustomView/Classes/**/*.bundle']
  }

  s.public_header_files = 'TBTCustomView/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'MBProgressHUD', '~> 0.9.1'
  s.dependency 'TTabBarController', '~> 0.2.0'
  s.dependency 'TOldBasicClass'
  s.dependency 'TBTCategory'
  s.dependency 'YYWebImage'
  s.dependency 'TBasicLib'
  s.dependency 'TBTLog'
  s.dependency 'TBTOldNetwork'
  
end
