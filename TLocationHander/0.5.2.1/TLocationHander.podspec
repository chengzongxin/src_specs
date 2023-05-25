Pod::Spec.new do |s|
  s.name             = "TLocationHander"
  s.version          = "0.5.2.1"
  s.summary          = "土巴兔定位组件"
  s.description      = "获取定位信息| 修复0.5.2版本及之前版本发现的回调列表在执行回调完后不清除的bug"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "bd65c1f" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'TLocationHander/Pod/Classes/*.{h,m}'

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'TBasicLib'
  s.dependency 'TObject'
  s.dependency 'TBTCustomView'
  s.dependency 'Reachability', '3.2'

end
