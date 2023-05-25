#
# Be sure to run `pod lib lint DCZXB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCZXB'
  s.version          = '0.1.0'
  s.summary          = '商家装修宝'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
商家装修宝模块
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/dczxb'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/dczxb.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.resources = 'DCZXB/Assets/images/*.png','DCZXB/Classes/**/*.xib'
  
  s.subspec 'M' do |m|
      m.source_files = 'DCZXB/Classes/M/*.swift'
  end

  s.subspec 'VC' do |vc|
      vc.source_files = 'DCZXB/Classes/C/*.swift','DCZXB/Classes/V/*.swift'
      vc.dependency 'DCZXB/M'
  end

  s.dependency 'DCCommonRepo'
  s.dependency 'TBaseUISwift'
  s.dependency 'PKHUD'
  
  # s.resource_bundles = {
  #   'DCZXB' => ['DCZXB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
