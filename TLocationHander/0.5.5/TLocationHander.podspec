Pod::Spec.new do |s|
  s.name             = "TLocationHander"
  s.version          = "0.5.5"
  s.summary          = "土巴兔定位组件"
  s.description      = "【修复】：block数组增加和移除元素的逻辑调整"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "1cc115f3" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'TLocationHander/Pod/Classes/*.{h,m}'

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'TBasicLib', '0.8.67'
  s.dependency 'TObject', '0.0.7'
  s.dependency 'TBTCustomView', '0.3.4'
  s.dependency 'Reachability', '3.2'

end
