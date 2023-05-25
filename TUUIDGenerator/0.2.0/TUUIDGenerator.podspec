
Pod::Spec.new do |s|
        
  s.name             = "TUUIDGenerator"
  s.version          = "0.2.0"
  s.summary          = "获许设备唯一id"
  s.description      = "0.2.0 版本用于组件库 "
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "206eedd" }
  s.platform         = :ios, '9.0'
  s.requires_arc     = true

  s.source_files     = 'TUUIDGenerator/src/*.{h,m}'

  s.subspec 'KeychainItemWrapper' do |keychain|
    keychain.requires_arc = false
    keychain.source_files = 'TUUIDGenerator/src/KeychainItemWrapper/*.{h,m}'
  end

end
