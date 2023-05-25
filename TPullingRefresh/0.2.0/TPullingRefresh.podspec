Pod::Spec.new do |s|
  s.name             = "TPullingRefresh"
  s.version          = "0.2.0"
  s.summary          = "土巴兔旧版下拉刷新组件"
  s.description      = "给旧项目还没更新下拉刷新组件的使用"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.23" }
  s.platform     = :ios, '7.0'
  s.requires_arc = false

  s.source_files = 'TPullingRefresh/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TPullingRefresh' => ['Pod/Assets/*.png']
  }

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
end
