Pod::Spec.new do |s|
  s.name                = "TUmengAnalytics"
  s.version             = "0.0.3"
  s.summary             = "集成 TUmengAnalytics 6.1.0版本"
  s.description         = "TUmengAnalytics 6.1.0版本暂时还没集成cocospod功能，出于此原因为避免项目中改动比较多，特集成了此私有库，后续cocospod更新后可以考虑删除这个库。
                            -- 2019.10"
  s.homepage            = "http://repo.we.com/ios/tbtrepo"
  s.license             = 'MIT'
  s.author              = { "jolin.ding" => "jolin.ding@corp.to8to.com" }
  s.source              = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.9.79" }
  s.platform            = :ios, '8.0'
  s.requires_arc        = true
  
  s.frameworks          = ['SystemConfiguration', 'CoreTelephony']
  s.libraries           = ['z']
  s.source_files        = 'TUmengAnalytics/Pod/Classes/*.{h,m}'
  s.vendored_frameworks = ['TUmengAnalytics/Pod/Classes/*.framework']
  s.resources    	= ['TUmengAnalytics/Pod/Resources/*']

end
