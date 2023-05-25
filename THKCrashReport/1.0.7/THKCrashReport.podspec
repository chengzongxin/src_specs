#
# Be sure to run `pod lib lint THKCrashReport.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCrashReport'
  s.version          = '1.0.7'
  s.summary          = 'APM上报'
  s.description      = '优化禁止上报，修改默认上报url'
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "amby.qin" => "amby.qin@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "324957a" }
  s.platform         = :ios, '9.0'

  s.source_files        = 'THKCrashReport/THKCrashReport/Classes/*.{h,m,mm,c}'
  s.public_header_files = 'THKCrashReport/THKCrashReport/Classes/THKCrashReport.h'
  s.subspec 'THKAPMManager' do |ss|
    ss.source_files = 'THKCrashReport/THKCrashReport/Classes/THKAPMManager/*.{h,m,mm,c}'
  end

  s.subspec 'curl' do |ss|
    ss.source_files = 'THKCrashReport/THKCrashReport/Classes/curl/**/*.{h,m,mm,c}'
  end

  s.vendored_frameworks  = ['THKCrashReport/THKCrashReport/Classes/Matrix.framework']
  s.vendored_libraries  = 'THKCrashReport/THKCrashReport/Classes/curl/lib/libcurl.a'
  
  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'Masonry', '~> 1.1.0'
  
end
