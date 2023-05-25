#
# Be sure to run `pod lib lint THKNavigationBarKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKNavigationBarKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKNavigationBarKit.'

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
  s.author           = { 'chengzongxin' => 'joe.cheng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/*.h'

  s.resource_bundles = {
     'THKNavigationBarKit' => ['BaseBusinessKit/THKNavigationBarKit/README.md']
  }
  
  s.subspec 'BaseView' do |baseview|
    baseview.public_header_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/BaseView/*.h'
    baseview.source_files =  'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/BaseView/*'
  end
  
  s.subspec 'BaseViewModel' do |vm|
    vm.public_header_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/BaseViewModel/*.h'
    vm.source_files =  'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/BaseViewModel/*'
  end
  
  s.subspec 'Public' do |p|
    p.public_header_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/Public/*.h'
    p.source_files =  'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/Public/*'
  end
  
  s.subspec 'TMUINavigationTitleView' do |tv|
    tv.public_header_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/TMUINavigationTitleView/*.h'
    tv.source_files =  'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/TMUINavigationTitleView/*'
  end
  
  s.subspec 'TMUINavigationTitleViewModel' do |tvm|
    tvm.public_header_files = 'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/TMUINavigationTitleViewModel/*.h'
    tvm.source_files =  'BaseBusinessKit/THKNavigationBarKit/THKNavigationBarKit/Classes/TMUINavigationTitleViewModel/*'
  end

  s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>', '#import <TMUICore.h>', '#import <TMUIExtensions.h>', '#import <Masonry.h>'
  
  s.dependency 'TMUIComponents', '2.0.25'
  s.dependency 'TMUIExtensions' , '2.0.25'
  s.dependency 'THKAttentionKit', '0.1.0'
  s.dependency 'THKBusinessViewKit', '0.1.0'
  s.dependency 'THKCityToolKit', '0.1.0'
  s.dependency 'THKBusinessToolKit', '0.1.0'
  
end
