
Pod::Spec.new do |s|
  s.name             = "TTrack"
  s.version          = "0.1.2"
  s.summary          = "土巴兔无埋点SDK"
  s.description      = "土巴兔无埋点SDK"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.112" }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'TTrack/TTrack/**/*.{h,m}'
  s.resources        = ['TTrack/TTrack/*.xib']

end
