Pod::Spec.new do |s|
  s.name             = "TTabBarController"
  s.version          = "0.2.1"
  s.summary          = "土巴兔自定义标签栏控制器"
  s.description      = "兼容早期项目用，不支持iOS6的建议不要使用，使用系统标签栏控制器即可"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.97" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TTabBarController/Pod/Classes/*.{h,m}'

end
