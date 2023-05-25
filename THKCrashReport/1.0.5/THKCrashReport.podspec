#
# Be sure to run `pod lib lint THKCrashReport.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCrashReport'
  s.version          = '1.0.5'
  s.summary          = 'APM上报'
  s.description      = '修改cUrl的超时时间为3秒；暂时忽略卡顿的耗电数据(类型为2011)'
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "amby.qin" => "amby.qin@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "6a6aa2b" }
  s.platform         = :ios, '9.0'

  s.source_files        = 'THKCrashReport/THKCrashReport/Classes/*.{h,m,mm,c}'
  s.public_header_files = 'THKCrashReport/THKCrashReport/Classes/THKCrashReport.h'
  s.subspec 'Matrix' do |ss|
    ss.source_files = 'THKCrashReport/THKCrashReport/Classes/Matrix/*.{h,m,mm,c}'
  end

  s.subspec 'curl' do |ss|
    ss.source_files = 'THKCrashReport/THKCrashReport/Classes/curl/**/*.{h,m,mm,c}'
  end

  s.vendored_frameworks  = ['THKCrashReport/THKCrashReport/Classes/Matrix.framework']
  s.vendored_libraries  = 'THKCrashReport/THKCrashReport/Classes/curl/lib/libcurl.a'
  
  # s.resource_bundles = {
  #   'THKCrashReport' => ['THKCrashReport/THKCrashReport/Assets/*.png']
  # }

  #s.dependency 'AFNetworking', '~> 4.0.1'
end