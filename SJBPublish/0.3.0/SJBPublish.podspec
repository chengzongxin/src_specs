#
# Be sure to run `pod lib lint SJBPublish.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SJBPublish'
  s.version          = '0.3.0'
  s.summary          = '设计本发布模块'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/tubroker/sjbpublish'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aaron.xun' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/tubroker/sjbpublish.git', :tag => '0.3.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SJBPublish/Classes/**/*'
  
  s.resource_bundles = {
    'SJBPublish' => ['SJBPublish/Assets/*.png'],
    'HXPhotoPicker' => ['SJBPublish/Assets/*.bundle']
  }

  s.public_header_files = 'Pod/Classes/SJBPublish.h'
  
  s.dependency 'Masonry', '1.1.0'
  s.dependency 'TBasicLib'
  s.dependency 'SJBRefresh', '0.1.5'
  s.dependency 'IQKeyboardManager', '5.0.3'
  s.dependency 'TBTCustomView'
  s.dependency 'TObject', '0.0.3'
  s.dependency 'TBTOldNetwork'
  s.dependency 'TBTCategory'
  s.dependency 'Godeye'


  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__
  #import <TBasicLib/TBasicLib.h>
  #import <TBTCustomView/TBTCustomView.h>
  #import <TObject/TObject.h>
  #import <TBTOldNetwork/TBTOldNetwork.h>
  #import <TBTCategory/TBTCategory.h>
  #import "SJBCommonDefine.h"
  #endif
  EOS
  
end
