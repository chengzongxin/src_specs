#
# Be sure to run `pod lib lint THKAnimationKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKAnimationKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKAnimationKit.'

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

  s.source_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/*'
  s.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/*.h'

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKAnimationKit/README.md']
  end

  s.subspec 'Animation' do |animation|
    animation.subspec 'MoveCard' do |movecard|
        movecard.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/MoveCard/*.h'
        movecard.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/MoveCard/*'
    end
    animation.subspec 'ImgViewUp' do |imgviewup|
        imgviewup.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/ImgViewUp/*.h'
        imgviewup.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/ImgViewUp/*'
    end
    animation.subspec 'Search' do |search|
    end
    animation.subspec 'MoveView' do |moveview|
        moveview.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/MoveView/*.h'
        moveview.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/MoveView/*'
    end
    animation.subspec 'Half' do |half|
        half.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/Half/*.h'
        half.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Animation/Half/*'
    end
end
s.subspec 'Base' do |base|
    base.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Base/*.h'
    base.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Base/*'
end
s.subspec 'Drag' do |drag|
    drag.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Drag/*.h'
    drag.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/Drag/*'
end

s.subspec 'PushPopAsLocationToListTransition' do |pushpop|
  pushpop.public_header_files = 'BaseKit/THKAnimationKit/THKAnimationKit/Classes/PushPopAsLocationToListTransition/*.h'
  pushpop.source_files =  'BaseKit/THKAnimationKit/THKAnimationKit/Classes/PushPopAsLocationToListTransition/*'
end

  s.prefix_header_contents = <<-DESC
#import <Masonry/Masonry.h>
#import <THKAnimationKit/THKAnimationKit_BaseDefine.h>
                                  DESC
  s.dependency 'TMUIComponents','2.0.25'
  s.dependency 'THKBaseKit','0.1.0'
  s.dependency 'THKMacroKit','0.1.0'
  s.dependency 'TMUIExtensions','2.0.25'

end
