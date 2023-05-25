#
# Be sure to run `pod lib lint THKExpertServiceKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKExpertServiceKit'
  s.version          = '0.1.0'
  s.summary          = '专家服务'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/collen.zhangTHKExpertServiceKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/*.h'
  s.resource_bundles = {
     'THKExpertServiceKit' => ['BaseBusinessKit/THKExpertServiceKit/README.md','BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Assets/*.png','BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/**/*.xib']
  }
  s.subspec 'Tool' do |tool|
    tool.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/Tool/*.h'
    tool.source_files =  'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/Tool/*'
  end

  s.subspec 'Model' do |model|
      model.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/Model/*.h'
      model.source_files =  'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/Model/*'
  end
  s.subspec 'ViewController' do |viewcontroller|
      viewcontroller.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/*.h'
      viewcontroller.source_files =  'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/*'
      viewcontroller.subspec 'TEPPayModule' do |teppaymodule|
          teppaymodule.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/TEPPayModule/*.h'
          teppaymodule.source_files =  'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/TEPPayModule/*'
          teppaymodule.subspec 'View' do |view|
              view.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/TEPPayModule/View/*.h'
              view.source_files =  'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/TEPPayModule/View/*'
          end
          teppaymodule.subspec 'ViewController' do |viewcontroller|
              viewcontroller.public_header_files = 'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/TEPPayModule/ViewController/*.h'
              viewcontroller.source_files =  'BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Classes/ViewController/TEPPayModule/ViewController/*'
          end
      end
  end
  s.prefix_header_contents = '#import "THKExpertServiceKit_Define.h"'
  # s.resource_bundles = {
  #   'THKExpertServiceKit' => ['BaseBusinessKit/THKExpertServiceKit/THKExpertServiceKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'THKRouterKit', '0.1.0'
  s.dependency 'THKBaseNetwork', '0.3.1'
  s.dependency 'THKBaseKit', '0.1.0'
  s.dependency 'THKMacroKit', '0.1.0'
  s.dependency 'THKRealTimeDataKit', '0.1.0'
  s.dependency 'TIMKit'
  s.dependency 'THKBusinessToolKit', '0.1.0'
  s.dependency 'THKSafeKit', '0.1.0'
  s.dependency 'THKCustomHUD', '0.1.5'
  s.dependency 'TMToast', '1.0.0'
  s.dependency 'THKBaseUIKit', '0.1.0'
end
