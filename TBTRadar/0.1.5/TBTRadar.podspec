#
# Be sure to run `pod lib lint TBTRadar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTRadar'
  s.version          = '0.1.5'
  s.summary          = '雷达工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aaron.xun' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => '993dd4a' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.2'

  s.libraries = ['z','stdc++','c++']
  s.resources = ['TBTRadar/Classes/**/*.xib']
  s.source_files = 'TBTRadar/Classes/**/*.{h,m,mm}'
  
  # s.resource_bundles = {
  #   'TBTRadar' => ['TBTRadar/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'TSearchBase'#, '0.5.9'
  s.dependency 'THKCustomHUD'#, '0.0.4'
  s.dependency 'TMUIKit/TMUIComponents/TMToast'
  s.dependency 'TBTNetwork'#, '0.1.0'
  s.dependency 'TBTCategory'
  s.dependency 'TBTCustomView'
  
  s.prefix_header_contents = '#import "TRCommonDefine.h"'
  
end
