#
# Be sure to run `pod lib lint THKScoreKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKScoreKit'
  s.version          = '0.1.0'
  s.summary          = '积分库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent/THKScoreKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  # s.static_framework = true

  s.source_files = 'BaseBusinessKit/THKScoreKit/THKScoreKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKScoreKit/THKScoreKit/Classes/*.h'

  s.subspec 'Network' do |network|
    network.public_header_files = 'BaseBusinessKit/THKScoreKit/THKScoreKit/Classes/Network/*.h'
    network.source_files =  'BaseBusinessKit/THKScoreKit/THKScoreKit/Classes/Network/*'
  end
  s.subspec 'View' do |view|
    view.public_header_files = 'BaseBusinessKit/THKScoreKit/THKScoreKit/Classes/View/*.h'
    view.source_files =  'BaseBusinessKit/THKScoreKit/THKScoreKit/Classes/View/*'
  end

  s.resource_bundles = {
    'THKScoreKit' => ['BaseBusinessKit/THKScoreKit/THKScoreKit/**/*.xib','BaseBusinessKit/THKScoreKit/README.md']
  }

  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__
  #import <THKMacroKit/THKBlockDefine.h>
  #import <TMUIExtensions/TMUIExtensions.h>
  #endif
 EOS
  
 s.dependency 'THKNetworkKit', '0.1.0'
 s.dependency 'TCoinTaskModule', '0.0.9'
 s.dependency 'TMUIComponents', '2.0.25'
 s.dependency 'THKMacroKit', '0.1.0'
 s.dependency 'THKCustomToolKit', '0.1.0'
 s.dependency 'THKRealTimeDataKit', '0.1.0'
 s.dependency 'TMUIExtensions', '2.0.25'
 s.dependency 'THKBaseNetwork', '0.3.1'
end
