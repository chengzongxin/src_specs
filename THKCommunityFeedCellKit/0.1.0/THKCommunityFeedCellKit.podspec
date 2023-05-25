#
# Be sure to run `pod lib lint THKCommunityFeedCellKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCommunityFeedCellKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKCommunityFeedCellKit.'

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

  s.public_header_files = 'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/*.h'
  s.source_files = 'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/*'
  s.resource_bundles = {
    'THKCommunityFeedCellKit' => ['BaseBusinessKit/THKCommunityFeedCellKit/README.md']
  }

  s.subspec 'Model' do |flow|
    flow.public_header_files = 'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/Model/*.h'
    flow.source_files =  'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/Model/*'
  end
  
  s.subspec 'Cell' do |cell|
    cell.public_header_files = 'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/Cell/*.h'
    cell.source_files =  'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/Cell/*.{h,m}'
    cell.subspec 'Resource' do |rc|
      rc.resource_bundles = {
        'THKCommunityFeedCellAnimationResource' => ['BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/Cell/*.json']
      }
    end
  end
  
  s.subspec 'View' do |v|
    v.public_header_files = 'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/View/*.h'
    v.source_files =  'BaseBusinessKit/THKCommunityFeedCellKit/THKCommunityFeedCellKit/Classes/View/*'
  end
  
  s.prefix_header_contents =
  '#import <UIKit/UIKit.h>',
  '#import <Foundation/Foundation.h>',
  '#import <TMUICore.h>',
  '#import <TMUIExtensions.h>',
  '#import <Masonry.h>'
  
  s.dependency 'TMUIExtensions', '2.0.25'
  s.dependency 'THKBaseNetwork', '0.3.1'
  s.dependency 'THKInteractiveKit', '0.1.0'
  s.dependency 'THKBusinessViewKit', '0.1.0'
  s.dependency 'THKBaseKit', '0.1.0'
  s.dependency 'THKMacroKit', '0.1.0'
end
