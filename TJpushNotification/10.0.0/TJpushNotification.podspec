
Pod::Spec.new do |s|
  s.name             = "TJpushNotification"
  s.version          = "10.0.0"
  s.summary          = "极光推送模块"
  s.description      = "极光推送模块"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "hank.zhang" => "hank.zhang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git"}
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'TJpushNotification/Pod/Classes/*.{h,m}'

end
