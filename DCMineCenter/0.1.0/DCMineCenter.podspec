#
# Be sure to run `pod lib lint DCMineCenter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCMineCenter'
  s.version          = '0.1.0'
  s.summary          = '商家个人中心'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
商家个人中心模块
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/dcminecenter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/dcminecenter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DCMineCenter/Classes/MineCenterNetworkingDAL.swift'
  s.resources = 'DCMineCenter/Classes/V/*.xib','DCMineCenter/Classes/C/*.xib','DCMineCenter/Assets/images/*.{png}'
  
  s.subspec 'M' do |m|
      m.source_files = 'DCMineCenter/Classes/M/*.*'
  end

  s.subspec 'V' do |v|
      v.source_files = 'DCMineCenter/Classes/V/*.swift'
  end

  s.subspec 'C' do |c|
      c.source_files = 'DCMineCenter/Classes/C/*.swift'
  end
  
  s.dependency 'DCCommonRepo'
  s.dependency 'TBaseUISwift'
  s.dependency 'PKHUD'
  s.dependency 'DCZXB'
  s.dependency 'DCLogin'
  
  # s.resource_bundles = {
  #   'DCMineCenter' => ['DCMineCenter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
