#
# Be sure to run `pod lib lint DCOrderAuction.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCOrderAuction'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DCOrderAuction.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/dcorderauction'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/dcorderauction.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

s.source_files = 'DCOrderAuction/Classes/TAuctionNetRequester.swift'
s.resources = 'DCOrderAuction/Assets/images/*.png','DCOrderAuction/Classes/**/*.xib'

s.subspec 'M' do |m|
    m.source_files = 'DCOrderAuction/Classes/M/*.swift'
end

s.subspec 'V' do |v|
    v.source_files = 'DCOrderAuction/Classes/V/*.swift'
end

s.subspec 'C' do |c|
    c.source_files = 'DCOrderAuction/Classes/C/*.swift'
end

s.dependency 'DCCommonRepo'
s.dependency 'TBaseUISwift'
s.dependency 'PKHUD'
  
  # s.resource_bundles = {
  #   'DCOrderAuction' => ['DCOrderAuction/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
