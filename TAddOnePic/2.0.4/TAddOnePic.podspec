Pod::Spec.new do |s|
  s.name             = "TAddOnePic"
  s.version          = "2.0.4"
  s.summary          = "土巴兔获取单张图片组件"
  s.description      = "合并了2.0.0分支代码，解决冲突"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "bd9d3d85"}
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'TAddOnePic/Pod/Classes/*.{h,m}'
  #s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  #s.dependency 'TBasicLib', '0.8.67'
  s.dependency 'THKCustomHUD', '0.1.5'
  s.dependency 'TMUIExtensions', '2.0.25'
end
