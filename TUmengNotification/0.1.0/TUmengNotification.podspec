Pod::Spec.new do |s|
  s.name             = "TUmengNotification"
  s.version          = "0.1.0"
  s.summary          = "土巴兔友盟推送组件"
  s.description      = "集成友盟推送代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.25" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TUmengNotification/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TUmengNotification' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'UMengMessage', '~>1.1.0.2'

end
