#
# Be sure to run `pod lib lint THKOSSManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKOSSManager'
  s.version          = '2.0.3'
  s.summary          = 'OSS上传/下载.'
  s.description      = '修改上传下载方案：文件名由接口定义并返回；接口增加了字段用于身份认证;接口请求增加了公参；'
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "amby.qin" => "amby.qin@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "f6d2b95" }
  s.platform         = :ios, '9.0'

  s.source_files        = 'THKOSSManager/THKOSSManager/Classes/*.{h,m,mm,c}'
  s.public_header_files = 'THKOSSManager/THKOSSManager/Classes/THKOSSManager.h'

  s.dependency 'Masonry', '1.1.0'
  s.dependency 'AFNetworking', '4.0.1'
end
