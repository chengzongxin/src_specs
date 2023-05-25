#
# Be sure to run `pod lib lint DCCommonRepo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCCommonRepo'
  s.version          = '0.2.0'
  s.summary          = '商家公共模块'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
集成了商家所需的网络、上下拉刷新、UI、Tool
                       DESC

  s.homepage         = 'http://repo.we.com/ios/DCCommonRepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/DCCommonRepo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'DCCommonRepo/Classes/**/*'
  
  #制作subspec
#  s.subspec 'Define' do |d|
#      d.source_files = 'DCCommonRepo/Classes/CommonDefine/*.*'
#  end

  s.subspec 'Tool' do |t|
      t.source_files = 'DCCommonRepo/Classes/CommonTool/*.*'
  end
  
  s.subspec 'UI' do |ui|
      ui.source_files = 'DCCommonRepo/Classes/CommonUI/*.swift'
      ui.resources = 'DCCommonRepo/Classes/CommonUI/*.xib'
  end
  
  s.subspec 'User' do |us|
      us.source_files = 'DCCommonRepo/Classes/User/*.swift'
      us.dependency 'HandyJSON'
  end
  
  s.subspec 'Refresh' do |re|
      re.source_files = 'DCCommonRepo/Classes/Refresh/*.swift'
      re.resources = 'DCCommonRepo/Classes/Refresh/images/*.png'
      re.dependency 'DCCommonRepo/Networking'
  end
  
  s.subspec 'Networking' do |net|
      net.source_files = 'DCCommonRepo/Classes/Networking/*.swift'
      net.dependency 'AlamofireObjectMapper', '5.0.0'
      net.dependency 'TNetWorkingSwift','1.0.1'
      net.dependency 'DCCommonRepo/User'
  end
  
  s.dependency  'TBaseUtilsSwift'
  
  # s.resource_bundles = {
  #   'DCCommonRepo' => ['DCCommonRepo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
