Pod::Spec.new do |s|
  s.name             = "TSupportCitysVC"
  s.version          = "0.2.0"
  s.summary          = "土巴兔支持城市列表组件"
  s.description      = "集成城市列表显示和数据获取代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.23" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TSupportCitysVC/Pod/Classes/*.{h,m}'
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'TCommonConfigOnWeb'
  s.dependency 'TBasicLib'
  s.dependency 'TLocationHander'

end
