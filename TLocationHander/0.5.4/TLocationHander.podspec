Pod::Spec.new do |s|
  s.name             = "TLocationHander"
  s.version          = "0.5.4"
  s.summary          = "土巴兔定位组件"
  s.description      = "修改TObject版本；修改头文件包含方式"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "9b987a9" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'TLocationHander/Pod/Classes/*.{h,m}'

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  
  s.dependency 'TObject', '0.0.6'
  s.dependency 'TBTCustomView', '0.3.3'
  s.dependency 'Reachability', '3.2'

end
