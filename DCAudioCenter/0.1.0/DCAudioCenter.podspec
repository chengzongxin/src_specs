#
# Be sure to run `pod lib lint DCAudioCenter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCAudioCenter'
  s.version          = '0.1.0'
  s.summary          = '商家录音列表'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
商家录音列表模块
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/dcaudiocenter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/dcaudiocenter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.resources = 'DCAudioCenter/Assets/images/*.png','DCAudioCenter/Classes/**/*.xib'
  
  s.subspec 'M' do |m|
      m.source_files = 'DCAudioCenter/Classes/M/*.swift'
  end
  
  s.subspec 'V' do |v|
      v.source_files = 'DCAudioCenter/Classes/V/*.swift'
      v.dependency 'DCAudioCenter/M'
  end
  
  s.subspec 'C' do |c|
      c.source_files = 'DCAudioCenter/Classes/C/*.swift'
      c.dependency 'DCAudioCenter/M'
      c.dependency 'DCAudioCenter/V'
  end
  
  s.dependency 'DCCommonRepo'
  s.dependency 'TBaseUISwift'
  s.dependency 'PKHUD'
  
  # s.resource_bundles = {
  #   'DCAudioCenter' => ['DCAudioCenter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
