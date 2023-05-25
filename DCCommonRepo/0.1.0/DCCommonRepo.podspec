#
# Be sure to run `pod lib lint DCCommonRepo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCCommonRepo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DCCommonRepo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
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
  
  s.dependency  'TBaseUtilsSwift'
  
  # s.resource_bundles = {
  #   'DCCommonRepo' => ['DCCommonRepo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
