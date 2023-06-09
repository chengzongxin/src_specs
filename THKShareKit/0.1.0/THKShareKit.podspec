#
# Be sure to run `pod lib lint THKShareKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKShareKit'
  s.version          = '0.1.0'
  s.summary          = '分享库'

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
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "6212170" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/THKShareKit.h'

  s.resource_bundles = {
     'THKShareKit' => ['BaseBusinessKit/THKShareKit/README.md']
   }
  # s.resource_bundles = {
  #   'THKShareKit' => ['THKShareKit/Assets/*.png']
  # }
  s.subspec 'Network' do |net|
    net.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/Network/**/*.h'
    net.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/Network/**/*'
  end

  s.subspec 'ShareController' do |sc|
    sc.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/*.h'
    sc.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/*'
    sc.subspec 'VC' do |vc|
      vc.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/VC/*.h'
      vc.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/VC/*'
    end
    sc.subspec 'View' do |v|
      v.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/View/*.h'
      v.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/View/*'
    end
    sc.subspec 'ViewModel' do |vm|
      vm.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/ViewModel/*.h'
      vm.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/ViewModel/*'
    end
    sc.subspec 'Model' do |vc|
      vc.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/Model/*.h'
      vc.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareController/Model/*'
    end
  end

  s.subspec 'ShareManager' do |sm|
    sm.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareManager/*.h'
    sm.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareManager/*'
    sm.subspec 'Handler' do |h|
      h.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareManager/Handler/*.h'
      h.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/ShareManager/Handler/*'
    end
  end
  
  s.subspec 'Other' do |o|
    o.public_header_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/Other/**/*.h'
    o.source_files = 'BaseBusinessKit/THKShareKit/THKShareKit/Classes/Other/**/*'
  end
  
  s.prefix_header_contents = '#import "THKShare_BaseDefine.h"'


   s.dependency 'THKPhotoKit', '0.1.0'
   s.dependency 'THKCustomToolKit', '0.1.0'
   s.dependency 'THKRadarKit', '0.1.0'
 
   s.dependency 'TBTShare', '0.0.4'
   s.dependency 'THKScoreKit', '0.1.0'
   s.dependency 'THKBusinessToolKit', '0.1.0'

end
