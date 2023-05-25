Pod::Spec.new do |s|
  s.name             = "TCommonConfigOnWeb"
  s.version          = "0.1.0"
  s.summary          = "土巴兔公共配置数据"
  s.description      = "提供公共配置数据、并处理更新"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.23" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TCommonConfigOnWeb/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TCommonConfigOnWeb' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'TBasicLib'

end
