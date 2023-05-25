Pod::Spec.new do |s|
  s.name             = "THKTimeProfiler"
  s.version          = "0.0.1"
  s.summary          = "函数耗时统计组件"
  s.description      = "函数耗时统计组件"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "elvis.peng" => "elvis.peng@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.9.81" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
 
  s.source_files = 'THKTimeProfiler/Pod/Classes/**/*.{h,m,c}'
  s.resources    = ['THKTimeProfiler/Pod/Resources/*']

end
