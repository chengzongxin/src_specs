#
# Be sure to run `pod lib lint TBTRadar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTRadar'
  s.version          = '2.0.0'
  s.summary          = '组件化库，适用'

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
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => 'd2f7ae2' }

  s.ios.deployment_target = '9.0'

  s.libraries = ['z','stdc++','c++']
  s.resources = ['TBTRadar/Classes/**/*.xib']
  s.source_files = 'TBTRadar/Classes/**/*.{h,m,mm}'
  
  s.dependency 'Godeye', '1.1.0'
  s.dependency 'TBTLog', '0.1.8'
  s.dependency 'THKCustomViewKit/THKSearchBaseView', '0.1.0'
  
  s.prefix_header_contents = '#import "TRCommonDefine.h"'
  
end
