#
# Be sure to run `pod lib lint THKBusinessViewKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKBusinessViewKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKBusinessViewKit.'

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
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "43d34bda" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKBusinessViewKit/*.{h,m}'
  s.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKBusinessViewKit.h'

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseBusinessKit/THKBusinessViewKit/README.md']
  end

  #THKIdentityView
  s.subspec 'THKIdentityView' do |ss|
    ss.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKIdentityView/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKIdentityView/*'
    ss.subspec 'PersonalDesignerConfig' do |config|
      config.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKIdentityView/PersonalDesignerConfig/*.h'
      config.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKIdentityView/PersonalDesignerConfig/*'
    end
    ss.dependency 'THKCustomViewKit/TBTCustomView', '0.1.0'
    ss.dependency 'TYYKit', '0.0.4'
    ss.dependency 'THKStartupConfigKit', '0.1.0'
    ss.dependency 'THKNetworkKit', '0.1.0'
  end

  #THKAvatarView
  s.subspec 'THKAvatarView' do |ss|
    ss.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKAvatarView/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKAvatarView/**/*'
    ss.dependency 'THKAttentionKit', '0.1.0'
    ss.dependency 'THKBusinessViewKit/THKIdentityView', '0.1.0'
    ss.prefix_header_contents = <<-DESC
    #import "Masonry.h"
    #import <ReactiveObjC/ReactiveObjC.h>
    #import <THKMacroKit/THKMacroKit.h>
    #import <THKCustomViewKit/TBTCustomView.h>
    #import "TMUIExtensions/TMUIExtensions.h"
                                        DESC
  end

  #TImmersiveContentDescView
  s.subspec 'TImmersiveContentDescView' do |ss|
    ss.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/TImmersiveContentDescView/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessViewKit/TImmersiveContentDescView/**/*'
    ss.dependency 'TMUICore', '2.0.25'
    ss.prefix_header_contents = <<-DESC
    #import "TMUICore/TMUICore.h"
                                        DESC
  end

  #TCaseFloatButton
  s.subspec 'TCaseFloatButton' do |ss|
    ss.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/TCaseFloatButton/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessViewKit/TCaseFloatButton/**/*'
    ss.dependency 'TMUICore', '2.0.25'
    ss.dependency 'THKCustomViewKit/CustomView', '0.1.0'
    ss.dependency 'THKModuleService', '0.1.0'
    ss.dependency 'THKRouterKit', '0.1.0'
    ss.dependency 'THKBusinessToolKit', '0.1.0'
    ss.dependency 'Godeye', '1.1.3'
    ss.dependency 'THKSafeKit', '0.1.0'
    ss.dependency 'THKRealTimeDataKit', '0.1.0'
#    ss.dependency 'THKBusinessViewKit/THKCompanyOrderView'
    ss.prefix_header_contents = <<-DESC
    #import "TMUICore/TMUICore.h"
                                        DESC
  end

  #THKChoosePhoto
  s.subspec 'THKChoosePhoto' do |ss|
    ss.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKChoosePhoto/**/*.h'
    ss.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKChoosePhoto/**/*'
    ss.dependency 'TMUICore', '2.0.25'
    ss.dependency 'Godeye', '1.1.3'
    ss.dependency 'THKSafeKit', '0.1.0'
    ss.dependency 'THKPhotoKit', '0.1.0'
    ss.prefix_header_contents = <<-DESC
    #import "TMUICore/TMUICore.h"
                                        DESC
  end

  #OrderCalendarView
  s.subspec 'OrderCalendarView' do |cv|
    cv.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/OrderCalendarView/**/*.h'
    cv.source_files =  'BaseBusinessKit/THKBusinessViewKit/OrderCalendarView/**/*'
    cv.dependency 'TMUIExtensions', '2.0.25'
    cv.dependency 'THKSafeKit', '0.1.0'
    cv.dependency 'TMToast', '1.0.0'
  end

  s.subspec 'THKCityPickerView' do |cityPV|
    cityPV.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKCityPickerView/**/*.h'
    cityPV.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKCityPickerView/**/*'
    cityPV.dependency 'THKBusinessToolKit', '0.1.0'
  end

  s.subspec 'THKMultipleConditionView' do |cityPV|
    cityPV.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKMultipleConditionView/**/*.h'
    cityPV.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKMultipleConditionView/**/*'
  end

  #THKScrollHotwordView
  s.subspec 'THKScrollHotwordView' do |hotwordview|
    hotwordview.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKScrollHotwordView/**/*.h'
    hotwordview.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKScrollHotwordView/View/*','BaseBusinessKit/THKBusinessViewKit/THKScrollHotwordView/Request/*'
    hotwordview.resource_bundles = {
        'THKScrollHotwordViewResource' => ['BaseBusinessKit/THKBusinessViewKit/THKScrollHotwordView/Resource/*']
    }
    # hotwordview.exclude_files = "BaseBusinessKit/THKBusinessViewKit/THKScrollHotwordView/Resource/*"
    hotwordview.dependency 'TMUIComponents', '2.0.25'
    hotwordview.dependency 'THKSafeKit', '0.1.0'
  end

  #AdFloatingView
  s.subspec 'AdFloatingView' do |adview|
    adview.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/*.h'
    adview.source_files =  'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/*'
    adview.subspec 'View' do |v|
      v.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/View/**/*.h'
      v.source_files =  'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/View/**/*'
    end
    adview.subspec 'Category' do |c|
      c.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/Category/**/*.h'
      c.source_files =  'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/Category/**/*'
    end
    adview.subspec 'Helper' do |h|
      h.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/Helper/**/*.h'
      h.source_files =  'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/Helper/**/*'
    end
    adview.subspec 'Request' do |req|
      req.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/Request/**/*.h'
      req.source_files =  'BaseBusinessKit/THKBusinessViewKit/AdFloatingView/Request/**/*'
    end
    
    adview.dependency 'THKBusinessToolKit', '0.1.0'
    adview.dependency 'TYYKit', '0.0.4'
    adview.dependency 'Godeye', '1.1.3'
    adview.dependency 'THKConfigurationKit', '0.1.0'
    adview.dependency 'THKCustomToolKit', '0.1.0'
  end

  s.subspec 'THKCountDownView' do |downview|
    downview.public_header_files = 'BaseBusinessKit/THKBusinessViewKit/THKCountDownView/**/*.h'
    downview.source_files =  'BaseBusinessKit/THKBusinessViewKit/THKCountDownView/**/*'
    downview.dependency 'THKBaseUIKit', '0.1.0'
    downview.dependency 'TMToast', '1.0.0'
  end

end
