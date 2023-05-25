Pod::Spec.new do |s|
  s.name             = "TAD"
  s.version          = "0.2.8"
  s.summary          = "土巴兔启动广告组件"
  s.description      = "集成启动广告的展示、获取, 闪屏广告即时显示"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.112" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.dependency 'TLocationHander', '0.2.0'
  s.dependency 'TBasicLib', '0.4.7'

  s.source_files = 'TAD/Pod/Classes/*.{h,m}'
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'


end
