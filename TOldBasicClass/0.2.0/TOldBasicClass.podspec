Pod::Spec.new do |s|
  s.name             = "TOldBasicClass"
  s.version          = "0.2.0"
  s.summary          = "土巴兔旧的基类"
  s.description      = "兼容早期项目用，新项目建议不要使用"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.68" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TOldBasicClass/Pod/Classes/*.{h,m}'

end
