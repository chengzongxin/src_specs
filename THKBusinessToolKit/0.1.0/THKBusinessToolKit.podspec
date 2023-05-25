#
# Be sure to run `pod lib lint THKSafeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKBusinessToolKit'
  s.version          = '0.1.0'
  s.summary          = '业务工具类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "6212170" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.static_framework = true

  s.source_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/*'
  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseBusinessKit/THKBusinessToolKit/README.md']
  end
  s.subspec 'Category' do |category|
    category.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/*.h'
    category.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/*'
    
    category.dependency 'THKBaseUIKit', '0.1.0'
    category.dependency 'THKCustomViewKit/TBTCustomView', '0.1.0'
    category.dependency 'THKSafeKit', '0.1.0'
    category.dependency 'IQKeyboardManager', '5.0.8'

    category.subspec 'String' do |string|
      string.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/String/*.h'
      string.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/String/*'
    end

    category.subspec 'ViewController' do |viewController|
      viewController.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/ViewController/*.h'
      viewController.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/ViewController/*'
    end

    category.subspec 'NSObject' do |ss|
      ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/NSObject/*.h'
      ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/Category/NSObject/*'
    end
  end

  
  s.subspec 'PayHandler' do |payHandler|
    payHandler.dependency 'THKPayKit', '0.1.0'
    payHandler.dependency 'THKMacroKit', '0.1.0'
    payHandler.dependency 'TMUICore', '2.0.25'
    payHandler.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/PayHandler/*.h'
    payHandler.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/PayHandler/*'
  end

  
  s.subspec 'TRsaTool' do |ss|
    ss.dependency 'TMTools', '0.1.3'
    #引入openssl需引入对应lib库，主工程引入百度地图SDK有lib库，会重复引用导致报错，故直接引百度地图SDK
    ss.dependency 'BaiduMapKit', '6.3.0'
    ss.dependency 'THKMacroKit', '0.1.0'
    ss.dependency 'TMUIExtensions', '2.0.25'

    ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/TRsaTool/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/TRsaTool/*'
    ss.prefix_header_contents = <<-DESC
      #import <THKMacroKit/THKMacroKit.h>
      #import <TMUIExtensions/TMUIExtensions.h>
                                        DESC
  end
  
  s.subspec 'ABTest' do |ss|
    ss.dependency 'THKMacroKit', '0.1.0'
    ss.dependency 'Godeye', '1.1.3'
    ss.dependency 'TRouter', '1.0.0'
    ss.dependency 'THKNetworkKit', '0.1.0'
    ss.dependency 'THKSafeKit', '0.1.0'
    ss.dependency 'THKModuleService', '0.1.0'
    ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/ABTest/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/ABTest/**/*'
  end

  
  s.subspec 'TAD' do |ss|
    ss.dependency 'TMUIExtensions', '2.0.25'
#    ss.dependency 'THKMacroKit'
#    ss.dependency 'Godeye'
    ss.dependency 'THKRouterKit', '0.1.0'
    ss.dependency 'THKCustomViewKit/TBasicView', '0.1.0'
    ss.dependency 'THKCustomToolKit', '0.1.0'
    ss.dependency 'THKRealTimeDataKit', '0.1.0'
    ss.dependency 'THKNetworkKit', '0.1.0'
    ss.dependency 'THKSafeKit', '0.1.0'

#    ss.dependency 'THKModuleService'
    ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/TAD/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/TAD/**/*'
    ss.prefix_header_contents = <<-DESC
      #import <TMUIExtensions/TMUIExtensions.h>
      #import <THKCustomViewKit/TBasicView.h>
      #import <THKRealTimeDataKit/THKRealTimeDataKit.h>
      #import <THKNetworkKit/THKNetworkKit.h>
      #import <THKRouterKit/THKRouterKit.h>
                                        DESC
  end

  
  s.subspec 'OSSTool' do |ss|
    ss.dependency 'THKOSSManager', '2.0.3'
    ss.dependency 'TMUIExtensions', '2.0.25'
    ss.dependency 'THKNetworkKit', '0.1.0'
    ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/OSSTool/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/OSSTool/**/*'
  end
  
  s.subspec 'THKCityTool' do |ss|
    ss.dependency 'THKNetworkKit', '0.1.0'
    ss.dependency 'YYCache', '1.0.4'
    ss.dependency 'THKSafeKit', '0.1.0'
    ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/THKCityTool/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/THKCityTool/**/*'
  end

  s.subspec 'LogUploadManager' do |ss|
    ss.dependency 'THKNetworkKit', '0.1.0'
    ss.dependency 'TYYKit', '0.0.4'
    ss.dependency 'SSZipArchive', '2.2.3'
    ss.dependency 'TBTLog', '0.1.8'
    ss.dependency 'THKRealTimeDataKit', '0.1.0'
    ss.public_header_files = 'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/LogUploadManager/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessToolKit/THKBusinessToolKit/Classes/LogUploadManager/**/*'
  end
end
