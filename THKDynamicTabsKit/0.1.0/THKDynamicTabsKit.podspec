#
# Be sure to run `pod lib lint THKDynamicTabsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKDynamicTabsKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKDynamicTabsKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chengzongxin/THKDynamicTabsKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengzongxin' => 'joe.cheng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.source_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/*.h'
  s.resource_bundles = {
    'THKDynamicTabsKit' => ['BaseBusinessKit/THKDynamicTabsKit/README.md']
  }

  s.subspec 'Request' do |request|
    request.public_header_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/Request/*.h'
    request.source_files =  'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/Request/*'
  end
  s.subspec 'Manager' do |manager|
    manager.public_header_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/Manager/*.h'
    manager.source_files =  'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/Manager/*'
  end
  s.subspec 'Model' do |model|
    model.public_header_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/Model/*.h'
    model.source_files =  'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/Model/*'
  end
  s.subspec 'view' do |view|
    view.public_header_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/View/*.h'
    view.source_files =  'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/View/*'
  end
  s.subspec 'ViewModel' do |vm|
    vm.public_header_files = 'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/ViewModel/*.h'
    vm.source_files =  'BaseBusinessKit/THKDynamicTabsKit/THKDynamicTabsKit/Classes/ViewModel/*'
  end

  s.dependency 'YYWebImage', '1.0.5'
  s.dependency 'TMUIExtensions',  '2.0.25'
  s.dependency 'TMUIComponents',  '2.0.25'
  s.dependency 'ReactiveObjC', '3.1.1'
  s.dependency 'Masonry', '1.1.0'
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'THKRouterKit', '0.1.0'
  s.dependency 'THKCustomViewKit', '0.1.0'
  
end
