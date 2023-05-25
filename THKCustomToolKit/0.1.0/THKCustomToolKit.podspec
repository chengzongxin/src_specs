#
# Be sure to run `pod lib lint THKCustomToolKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCustomToolKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKCustomToolKit.'

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
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

#  s.ios.deployment_target = '9.0'
s.platform     = :ios, "9.0"
s.requires_arc = true
  
  s.source_files = 'BaseKit/THKCustomToolKit/*.{h,m}'
  s.public_header_files = 'BaseKit/THKCustomToolKit/THKCustomToolKit.h'

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKCustomToolKit/README.md']
  end

  #THKScreenshotHelper
  s.subspec 'THKScreenshotHelper' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKScreenshotHelper/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKScreenshotHelper/*.h'
    ss.frameworks = 'Foundation', 'UIKit', 'QuartzCore'
  end

  #THKQRCodeUtil
  s.subspec 'THKQRCodeUtil' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKQRCodeUtil/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKQRCodeUtil/*.h'
    ss.frameworks = 'Foundation'
  end

  #THKTellPhone
  s.subspec 'THKTellPhone' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKTellPhone/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKTellPhone/*.h'
    ss.frameworks = 'Foundation'
  end

  #THKTickTimer
  s.subspec 'THKTickTimer' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKTickTimer/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKTickTimer/*.h'
    ss.frameworks = 'Foundation'
  end

  #THKLocationTool
  s.subspec 'THKLocationTool' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKLocationTool/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKLocationTool/*.h'
    ss.frameworks = 'Foundation', 'CoreLocation'
  end
  
  #THKUtilityViewTool
  s.subspec 'THKUtilityViewTool' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKUtilityViewTool/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKUtilityViewTool/*.h'
    ss.frameworks = 'UIKit'
    ss.dependency 'Masonry','1.1.0'
      ss.subspec 'CornerRadius' do |sss|
      sss.source_files = 'BaseKit/THKCustomToolKit/THKUtilityViewTool/CornerRadius/**/*'
      sss.public_header_files = 'BaseKit/THKCustomToolKit/THKUtilityViewTool/CornerRadius/**/*.h'
      end
      ss.subspec 'THKUtilityView' do |sss|
      sss.source_files = 'BaseKit/THKCustomToolKit/THKUtilityViewTool/THKUtilityView/*'
      sss.public_header_files = 'BaseKit/THKCustomToolKit/THKUtilityViewTool/THKUtilityView/*.h'
      end
  end
  
  #THKTextLimitTool
  s.subspec 'THKTextLimitTool' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKTextLimitTool/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKTextLimitTool/*.h'
    ss.frameworks = 'UIKit'
      ss.subspec 'CounterTF' do |sss|
      sss.source_files = 'BaseKit/THKCustomToolKit/THKTextLimitTool/CounterTF/*'
      sss.public_header_files = 'BaseKit/THKCustomToolKit/THKAnimationTool/CounterTF/*.h'
      end
      ss.subspec 'THKInputViewLimit' do |sss|
      sss.source_files = 'BaseKit/THKCustomToolKit/THKTextLimitTool/THKInputViewLimit/*'
      sss.public_header_files = 'BaseKit/THKCustomToolKit/THKAnimationTool/THKInputViewLimit/*.h'
      end
  end
  
  #THKAnimationTool
  s.subspec 'THKAnimationTool' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKAnimationTool/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKAnimationTool/*.h'
    ss.frameworks = 'Foundation'
      ss.subspec 'BTCoverHorizontalTransition' do |sss|
      sss.source_files = 'BaseKit/THKCustomToolKit/THKAnimationTool/BTCoverHorizontalTransition/*'
      sss.public_header_files = 'BaseKit/THKCustomToolKit/THKAnimationTool/BTCoverHorizontalTransition/*.h'
      end
  end
  
  #THKFuncTimeMesureTool
  s.subspec 'THKFuncTimeMesureTool' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKFuncTimeMesureTool/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKFuncTimeMesureTool/*.h'
    ss.frameworks = 'Foundation'
    ss.dependency 'Aspects', '1.4.1'
  end

  #TObject
  s.subspec 'TObject' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/TObject/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/TObject/**/*.h'
    ss.frameworks = 'Foundation'
    ss.dependency 'MJExtension',  '3.2.1'
  end

  s.subspec 'HttpLogModel' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/HttpLogModel/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/HttpLogModel/**/*.h'
    ss.dependency 'YYWebImage','1.0.5'
  end

  s.subspec 'THKCategoryTools' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/*.h'
    ss.subspec 'NSData' do |data|
      data.source_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/NSData/*'
      data.public_header_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/NSData/*.h'
      data.frameworks = 'Foundation'
    end
    ss.subspec 'NSUserDefaults' do |userdefaults|
      userdefaults.source_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/NSUserDefaults/*'
      userdefaults.public_header_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/NSUserDefaults/*.h'
    end
    ss.subspec 'UIDevice' do |dev|
      dev.source_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/UIDevice/*'
      dev.public_header_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/UIDevice/*.h'
    end
    ss.subspec 'NSArray' do |array|
      array.source_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/NSArray/*'
      array.public_header_files = 'BaseKit/THKCustomToolKit/THKCategoryTools/NSArray/*.h'
    end
    ss.dependency 'GTMBase64', '1.0.1'
    ss.dependency 'TMUIExtensions','2.0.25'
    ss.dependency 'THKBaseNetwork','0.3.1'
    ss.dependency 'THKMacroKit','0.1.0'
    ss.dependency 'TUUIDGenerator','0.2.0'
  end
  
  #TSNSLib
  s.subspec 'TSNSLib' do |ss|
    ss.source_files = 'BaseKit/THKCustomToolKit/TSNSLib/**/*'
    ss.public_header_files = 'BaseKit/THKCustomToolKit/TSNSLib/**/*.h'
    ss.frameworks = 'Foundation'
    ss.dependency 'MJExtension',  '3.2.1'
    ss.dependency 'TencentOpenAPI-Mirror', '3.3.9'
    ss.dependency 'WechatOpenSDK', '1.8.5'
    ss.dependency 'Weibo_SDK', '3.3.0'
    ss.dependency 'THKMacroKit' , '0.1.0'
    ss.dependency 'THKBaseNetwork' , '0.3.1'
    ss.dependency 'TMUIExtensions' , '2.0.25'
    ss.dependency 'THKCustomHUD' , '0.1.5'
    ss.dependency 'TMToast' , '1.0.0'
    ss.prefix_header_contents = <<-DESC
    #import "TSNSLib.h"
    #import <THKMacroKit/THKMacroKit.h>
    #import <TMUIExtensions/TMUIExtensions.h>

                                         DESC
  end


end
