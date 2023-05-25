#
# Be sure to run `pod lib lint THKGuideAlertKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKGuideAlertKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKGuideAlertKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "e994a213fe4f0b84dfe9e977d53833ce40d4cc43" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.static_framework = true

  s.public_header_files = 'BaseBusinessKit/THKGuideAlertKit/THKGuideAlertKit.h'
  s.source_files = 'BaseBusinessKit/THKGuideAlertKit/*.{h,m}'

  s.dependency 'Masonry', '1.1.0'
  s.dependency 'THKBaseKit', '0.1.0'
  s.dependency 'THKMacroKit', '0.1.0'
  s.dependency 'Godeye', '1.1.3'

  # s.resource_bundles = {
  #    'THKGuideAlertKit' => ['BaseBusinessKit/THKGuideAlertKit/README.md']
  # }

  #THKCommentGuideView
  s.subspec 'THKCommentGuideView' do |ss|
    ss.source_files = 'BaseBusinessKit/THKGuideAlertKit/THKCommentGuideView/**/*'
    ss.public_header_files = 'BaseBusinessKit/THKGuideAlertKit/THKCommentGuideView/**/*.h'
    ss.dependency 'THKGuideAlertKit/THKPushOpenAlertView', '0.1.0'
  end
  
  #THKPushOpenAlertView
  s.subspec 'THKPushOpenAlertView' do |ss|
    ss.source_files = 'BaseBusinessKit/THKGuideAlertKit/THKPushOpenAlertView/**/*'
    ss.public_header_files = 'BaseBusinessKit/THKGuideAlertKit/THKPushOpenAlertView/**/*.h'
    #ss.dependency 'THKCustomViewKit/CustomView'
    ss.dependency 'TMUIExtensions', '2.0.25'
  end
  
  #TMaskGuide
  s.subspec 'TMaskGuide' do |ss|
    ss.source_files = 'BaseBusinessKit/THKGuideAlertKit/TMaskGuide/**/*'
    ss.public_header_files = 'BaseBusinessKit/THKGuideAlertKit/TMaskGuide/**/*.h'
    #ss.dependency 'THKCustomViewKit/TBTCustomView'
    ss.dependency 'TMUICore', '2.0.25'
  end
  
  s.dependency 'THKCustomViewKit', '0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
  s.dependency 'Masonry', '1.1.0'
end
