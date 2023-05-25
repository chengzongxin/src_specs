Pod::Spec.new do |s|
  s.name             = "TSearchBase"
  s.version          = "0.6.6"
  s.summary          = "土巴兔搜索组件"
  s.description      = "集成搜索、搜索历史代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "959c6bf6" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.dependency 'TBasicLib', '0.8.67'
  s.dependency 'TRefresh', '0.3.9.1'
  s.dependency 'TMUIKit/TMUIExtensions'
  s.dependency 'TMUIKit', '1.1.12'
  s.dependency 'TObject', '0.0.4'
  s.dependency 'TOldBasicClass', '0.2.3'
  
  s.source_files = 'TSearchBase/Pod/Classes/*.{h,m}'
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'


end
