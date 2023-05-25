#
# Be sure to run `pod lib lint THKBaseUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKBaseUIKit'
  s.version          = '0.1.0'
  s.summary          = '基础UI'

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

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseKit/THKBaseUIKit/*.{h,m}'
  s.public_header_files = 'BaseKit/THKBaseUIKit/*.h'
  s.prefix_header_contents = '#import <THKBaseKit/THKBaseKit.h>'

  s.dependency 'THKBaseKit','0.1.0'
  s.dependency 'TMUICore', '2.0.25'
  s.dependency 'TMUIExtensions', '2.0.25'

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKBaseUIKit/README.md']
  end

  s.subspec 'THKPageLoadViewController' do |thkpageloadviewcontroller|
    thkpageloadviewcontroller.public_header_files = 'BaseKit/THKBaseUIKit/THKPageLoadViewController/*.h'
    thkpageloadviewcontroller.source_files =  'BaseKit/THKBaseUIKit/THKPageLoadViewController/*'
    
    thkpageloadviewcontroller.dependency 'ReactiveObjC', '3.1.1'
    thkpageloadviewcontroller.dependency 'THKCustomViewKit','0.1.0'
    
    thkpageloadviewcontroller.subspec 'THKPageLoadModel' do |thkpageloadmodel|
        thkpageloadmodel.public_header_files = 'BaseKit/THKBaseUIKit/THKPageLoadViewController/THKPageLoadModel/*.h'
        thkpageloadmodel.source_files =  'BaseKit/THKBaseUIKit/THKPageLoadViewController/THKPageLoadModel/*'
    end
  end

  s.subspec 'THKPageViewController' do |thkpageviewcontroller|
    thkpageviewcontroller.public_header_files = 'BaseKit/THKBaseUIKit/THKPageViewController/*.h'
    thkpageviewcontroller.source_files =  'BaseKit/THKBaseUIKit/THKPageViewController/*'
  end

  s.subspec 'THKPageScrollView' do |thkpagescrollview|
    thkpagescrollview.public_header_files = 'BaseKit/THKBaseUIKit/THKPageScrollView/*.h'
    thkpagescrollview.source_files =  'BaseKit/THKBaseUIKit/THKPageScrollView/*'
  end

  s.subspec 'THKNavigationController' do |thknavigationcontroller|
    thknavigationcontroller.public_header_files = 'BaseKit/THKBaseUIKit/THKNavigationController/*.h'
    thknavigationcontroller.source_files =  'BaseKit/THKBaseUIKit/THKNavigationController/*'
    thknavigationcontroller.dependency 'YYWebImage', '1.0.5'
    thknavigationcontroller.resource = ['THKBaseUIKit/THKNavigationController/Assets/*']
    thknavigationcontroller.dependency 'THKMacroKit','0.1.0'
  end

  #先屏蔽，等整理完后加入
  # s.subspec 'THKWebViewController' do |thkwebviewcontroller|
  #   thkwebviewcontroller.public_header_files = 'BaseKit/THKBaseUIKit/THKWebViewController/*.h'
  #   thkwebviewcontroller.source_files =  'BaseKit/THKBaseUIKit/THKWebViewController/*'
  #   thkwebviewcontroller.dependency 'TWebActionManager'
  #   thkwebviewcontroller.dependency 'TMEmptyView'
  #   thkwebviewcontroller.dependency 'THKMacroKit'

  # end

end
