
Pod::Spec.new do |s|

  version = '1.1.3'

  s.name             = "Godeye"
  s.version          = version
  s.summary          = "土巴兔天眼"
  s.description      = "修改CollectionView中删除最后一个item时出现的问题"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "amby.qin" => "amby.qin@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "bd9d3d85" }
  s.platform         = :ios, '9.0'
  s.requires_arc     = true

  s.source_files     = 'Godeye/src/**/*.{h,m}'
  s.dependency 'FMDB', '2.7.5'
  s.dependency 'TUUIDGenerator' , '0.2.0'
  s.dependency 'GTMBase64', '1.0.1'
  s.prefix_header_contents = '#define CURRENT_TIMESTAMP (CFAbsoluteTimeGetCurrent()+kCFAbsoluteTimeIntervalSince1970)', '#define GODEYE_VERSION @"'<< version <<'"', 'extern void GELog(NSString *frmt, ...);'

end
