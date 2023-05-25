Pod::Spec.new do |s|
  s.name             = "TRefresh"
  s.version          = "0.1.2"
  s.summary          = "新版下拉刷新组件"
  s.description      = "由MJRefresh修改而来"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.50" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TRefresh/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TRefresh' => ['Pod/Assets/*.png']
  }
  s.dependency 'TBasicLib'
end
