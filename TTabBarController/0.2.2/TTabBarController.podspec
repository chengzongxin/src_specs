Pod::Spec.new do |s|
  s.name             = "TTabBarController"
  s.version          = "0.2.2"
  s.summary          = "土巴兔自定义标签栏控制器"
  s.description      = "二进制组件"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => "b4614dab" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'TTabBarController/Pod/Classes/*.{h,m}'

end
