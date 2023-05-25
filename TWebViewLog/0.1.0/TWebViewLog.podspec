Pod::Spec.new do |s|
  s.name             = "TWebViewLog"
  s.version          = "0.1.0"
  s.summary          = "土巴兔WebViewLog组件"
  s.description      = "集成WebViewLog代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "anyeler.zhang" => "anyeler.zhang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.5.16" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
 
  s.source_files = 'TWebViewLog/Pod/Classes/*.{h,m}'
  s.prefix_header_contents = '
    #ifdef __OBJC__
    #import "TWebViewLog.h"
    #endif'
  
  s.dependency 'TBasicLib'

end
