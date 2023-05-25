#
# Be sure to run `pod lib lint THKBaseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKBaseKit'
  s.version          = '0.1.0'
  s.summary          = '土巴兔app基类库 '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "b66dd8a0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/*'
  s.public_header_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/THKBaseKit.h'

  s.static_framework = true
  
  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKBaseKit/THKBaseKit/Assets/**/*.png','BaseKit/THKBaseKit/README.md']
  end

  s.subspec 'BaseController' do |bvc|
    bvc.public_header_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseController/*.h'
    bvc.source_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseController/*'
  end

  s.subspec 'BaseView' do |bv|
    bv.public_header_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseView/*.h'
    bv.source_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseView/*'
  end

  s.subspec 'BaseViewModel' do |bvm|
    bvm.public_header_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseViewModel/*.h'
    bvm.source_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseViewModel/*'
  end

  s.subspec 'Common' do |bcm|
    bcm.public_header_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/Common/**/*.h'
    bcm.source_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/Common/**/*'
  end

  s.subspec 'BaseModel' do |basemodel|
    basemodel.public_header_files = 'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseModel/*.h'
    basemodel.source_files =  'BaseKit/THKBaseKit/THKBaseKit/Classes/BaseModel/*'
  end
  
  s.dependency 'THKMacroKit', '0.1.0'
  s.dependency 'Masonry' , '1.1.0'
  s.dependency 'TMUICore' , '2.0.25'
  s.dependency 'TMUIComponents' , '2.0.25'
  s.dependency 'TMUIExtensions', '2.0.25'
  s.dependency 'ReactiveObjC' , '3.1.1'
  # 这里删除无效引用THKCustomHUD，MJExtension

end
