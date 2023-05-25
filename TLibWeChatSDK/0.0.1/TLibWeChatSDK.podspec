Pod::Spec.new do |s|
  s.name                = "TLibWeChatSDK"
  s.version             = "0.0.1"
  s.summary             = "集成 LibWeChatSDK 1.8.3版本"
  s.description         = "LibWeChatSDK 1.8.1版本之后加入了调起小程序的功能，但是原有工程中集成的cocospod中的
						    LibWeChatSDK的最高版本只到1.7.5，出于此原因为避免项目中改动比较多，特集成了此私有库，后续
                            cocospod更新后可以考虑删除这个库。
                            -- 2018.10K"
  s.homepage            = "http://repo.we.com/ios/tbtrepo"
  s.license             = 'MIT'
  s.author              = { "jolin.ding" => "jolin.ding@corp.to8to.com" }
  s.source              = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.5.70" }
  s.platform            = :ios, '8.0'
  s.requires_arc        = true

  s.source_files        = 'TLibWeChatSDK/Pod/Classes/*.{h,m}'
  s.vendored_libraries  = ['TLibWeChatSDK/Pod/Classes/*.a']
  s.resources    	    = ['TLibWeChatSDK/Pod/Resources/*']

end
