Pod::Spec.new do |s|
  s.name             = "TRSA"
  s.version          = "0.1.0"
  s.summary          = "土巴兔rsa加密库"
  s.description      = "集成土巴兔rsa加密库"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.103" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TRSA/*.{h,m}'
  s.dependency 'OpenSSL', '~> 1.0.206'
end
