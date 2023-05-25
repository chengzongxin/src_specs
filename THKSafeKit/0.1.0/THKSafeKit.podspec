#
# Be sure to run `pod lib lint THKSafeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKSafeKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKSafeKit.'

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
  s.author           = { 'chengzongxin' => 'joe.cheng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "b66dd8a0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseKit/THKSafeKit/THKSafeKit/*'
  s.source_files = 'BaseKit/THKSafeKit/THKSafeKit/THKSafeKit.h'

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKSafeKit/README.md']
  end

  # NSArray
  s.subspec 'NSArray' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/NSArray/*'
  end
  
  # NSDictionary
  s.subspec 'NSDictionary' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/NSDictionary/*'
  end
  
  # NSMutableArray
  s.subspec 'NSMutableArray' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/NSMutableArray/*'
  end
  
  # NSMutableDictionary
  s.subspec 'NSMutableDictionary' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/NSMutableDictionary/*'
  end
  
  # NSNumber
  s.subspec 'NSNumber' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/NSNumber/*'
  end
  
  # NSString
  s.subspec 'NSString' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/NSString/*'
  end
  
  # UINavigationController
  s.subspec 'UINavigationController' do |ss|
    ss.source_files = 'BaseKit/THKSafeKit/THKSafeKit/UINavigationController/*'
  end
  
  
  s.dependency 'TMUIExtensions', '2.0.25'
  # s.dependency 'Bugly'
end
