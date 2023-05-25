Pod::Spec.new do |s|
  s.name             = "TPageTimeStatistics"
  s.version          = "0.1.0"
  s.summary          = "商家APP 页面耗时统计组件"
  s.description      = "封装上传页面耗时（包括接口耗时）代码"
  s.homepage         = "http://repo.we.com/ios/TSwiftRepo.git"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/TSwiftRepo.git", :tag => "0.2.2" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
 
  s.source_files = 'TPageTimeStatistics/TPageTimeStatistics/Classes/**/*.swift'
  s.requires_arc = true

end
