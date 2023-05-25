#
# Be sure to run `pod lib lint THKImageBrowserKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKImageBrowserKit'
  s.version          = '0.1.0'
  s.summary          = '大图业务组件'

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
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "b66dd8a0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/*.h'
  s.resource_bundles = {
     'THKGuideAlertKit' => ['BaseBusinessKit/THKImageBrowserKit/README.md']
  }

  s.subspec 'Tools' do |tools|
    tools.subspec 'THKImgBrowserEditView' do |thkimgbrowsereditview|
        thkimgbrowsereditview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserEditView/*.h'
        thkimgbrowsereditview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserEditView/*'
    end
    tools.subspec 'THKImgBrowserTopView' do |thkimgbrowsertopview|
        thkimgbrowsertopview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserTopView/*.h'
        thkimgbrowsertopview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserTopView/*'
    end
    tools.subspec 'THKImgBrowserUserTopView' do |thkimgbrowserusertopview|
        thkimgbrowserusertopview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserUserTopView/*.h'
        thkimgbrowserusertopview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserUserTopView/*'
    end
    tools.subspec 'THKImgBrowserCommentInteractiveView' do |thkimgbrowsercommentinteractiveview|
        thkimgbrowsercommentinteractiveview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserCommentInteractiveView/*.h'
        thkimgbrowsercommentinteractiveview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserCommentInteractiveView/*'
    end
    tools.subspec 'THKImgBrowserIMInteractiveView' do |thkimgbrowseriminteractiveview|
        thkimgbrowseriminteractiveview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserIMInteractiveView/*.h'
        thkimgbrowseriminteractiveview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserIMInteractiveView/*'
    end
    tools.subspec 'THKImgBrowserBottomView' do |thkimgbrowserbottomview|
        thkimgbrowserbottomview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserBottomView/*.h'
        thkimgbrowserbottomview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserBottomView/*'
    end
    tools.subspec 'THKImgBrowserTagTopView' do |thkimgbrowsertagtopview|
        thkimgbrowsertagtopview.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserTagTopView/*.h'
        thkimgbrowsertagtopview.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Tools/THKImgBrowserTagTopView/*'
    end
  end

  s.subspec 'Pro' do |pro|
    pro.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Pro/*.h'
    pro.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Pro/*'
  end

  s.subspec 'Edit' do |edit|
    edit.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Edit/*.h'
    edit.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Edit/*'
  end

  s.subspec 'Normal' do |normal|
    normal.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Normal/*.h'
    normal.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Normal/*'
  end

  s.subspec 'Case' do |ca|
    ca.public_header_files = 'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Case/*.h'
    ca.source_files =  'BaseBusinessKit/THKImageBrowserKit/THKImageBrowserKit/Classes/Case/*'
  end


  
  # s.resource_bundles = {
  #   'THKImageBrowserKit' => ['THKImageBrowserKit/Assets/*.png']
  # }

  s.prefix_header_contents = '#import <THKImageBrowserKit/THKImageBrowserKit_BaseDefine.h>'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'THKInteractiveKit', '0.1.0'
  s.dependency 'TMImageBrowser', '0.1.6'
  s.dependency 'THKPhotoKit', '0.1.0'
  s.dependency 'THKBusinessViewKit/THKAvatarView', '0.1.0'
  s.dependency 'THKBusinessViewKit/TImmersiveContentDescView', '0.1.0'
  s.dependency 'THKGuideAlertKit/TMaskGuide', '0.1.0'
  s.dependency 'THKSafeKit', '0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
  s.dependency 'THKBusinessViewKit/TCaseFloatButton', '0.1.0'

end
