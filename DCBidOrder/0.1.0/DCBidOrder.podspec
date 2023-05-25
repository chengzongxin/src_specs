#
# Be sure to run `pod lib lint DCBidOrder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCBidOrder'
  s.version          = '0.1.0'
  s.summary          = '商家抢购'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
商家抢购模块
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/dcbidorder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/dcbidorder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.subspec 'M' do |m|
      m.source_files = 'DCBidOrder/Classes/M/*.*'
  end
  
  s.subspec 'V' do |v|
      v.source_files = 'DCBidOrder/Classes/V/*.*'
      v.dependency 'DCBidOrder/M'
  end
  
  s.subspec 'C' do |c|
      c.source_files = 'DCBidOrder/Classes/C/*.*'
      c.dependency 'DCBidOrder/M'
      c.dependency 'DCBidOrder/V'
  end
  
  s.dependency 'DCCommonRepo'
  s.dependency 'TBaseUISwift'
  s.dependency 'PKHUD'
  
  # s.resource_bundles = {
  #   'DCBidOrder' => ['DCBidOrder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
