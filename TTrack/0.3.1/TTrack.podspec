
Pod::Spec.new do |s|
  s.name             = "TTrack"
  s.version          = "0.3.1"
  s.summary          = "土巴兔无埋点SDK"
  s.description      = "土巴兔无埋点SDK"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.5.14" }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'TTrack/TTrack/*.{h,m}'
  s.dependency 'FMDB/SQLCipher'

  s.subspec 'Core' do |co|
    co.source_files = 'TTrack/TTrack/Core/*.{h,m}'
  end

  s.subspec 'Category' do |ca|
    ca.source_files = 'TTrack/TTrack/Category/*.{h,m}'
  end

  s.subspec 'Circle' do |ci|
    ci.source_files = 'TTrack/TTrack/Circle/*.{h,m}'
    ci.resources    = ['TTrack/TTrack/Circle/*.xib']
  end

end
