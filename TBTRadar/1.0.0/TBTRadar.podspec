#
# Be sure to run `pod lib lint TBTRadar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTRadar'
  s.version          = '1.0.0'
  s.summary          = '加入TXLogHelper类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aaron.xun' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => '89586ac' }

  s.ios.deployment_target = '9.0'

  s.libraries = ['z','stdc++','c++']
  s.resources = ['TBTRadar/Classes/**/*.xib']
  s.source_files = 'TBTRadar/Classes/**/*.{h,m,mm}'
  
  s.dependency 'TSearchBase', '0.6.7'
  s.dependency 'TBTNetwork', '0.1.8'
  s.dependency 'TBTCustomView', '0.3.3'
  s.dependency 'Godeye', '1.1.0'
  s.dependency 'TBTLog', '0.1.8'
  
  s.prefix_header_contents = '#import "TRCommonDefine.h"'
  
end
