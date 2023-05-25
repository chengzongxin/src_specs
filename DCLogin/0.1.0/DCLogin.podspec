#
# Be sure to run `pod lib lint DCLogin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCLogin'
  s.version          = '0.1.0'
  s.summary          = '商家登录'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
商家登录模块
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/dclogin'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/dclogin.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DCLogin/Classes/*.*'
  
  s.resources = 'DCLogin/Assets/*.png','DCLogin/Classes/**/*.xib'

  s.subspec 'M' do |m|
      m.source_files = 'DCLogin/Classes/M/*.swift'
  end

  s.subspec 'V' do |v|
      v.source_files = 'DCLogin/Classes/V/*.swift'
      v.dependency 'DCLogin/M'
  end

  s.subspec 'C' do |c|
      c.source_files = 'DCLogin/Classes/C/*.swift'
      c.dependency 'DCLogin/M'
      c.dependency 'DCLogin/V'
  end

  s.dependency 'DCCommonRepo'
  s.dependency 'TBaseUISwift'
  s.dependency 'PKHUD'
  s.dependency 'SnapKit'
  s.dependency 'TTrack', '0.2.7'
  
  # s.resource_bundles = {
  #   'DCLogin' => ['DCLogin/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
