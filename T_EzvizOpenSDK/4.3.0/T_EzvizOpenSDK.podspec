Pod::Spec.new do |s|
  s.name             = "T_EzvizOpenSDK"
  s.version          = "4.3.0"
  s.summary          = "萤石sdk"
  s.description      = "萤石最近版本都没有更新到cocoapod，只能自己造一个"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.95" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'ThirdLib/EzvizOpenSDK/4.3.0/*.{h,m}'
  s.public_header_files = 'ThirdLib/EzvizOpenSDK/4.3.0/*.h'
  s.preserve_paths = 'ThirdLib/EzvizOpenSDK/4.3.0/libEZOpenSDK.a'
  s.vendored_libraries = 'ThirdLib/EzvizOpenSDK/4.3.0/libEZOpenSDK.a'
  s.libraries = ['EZOpenSDK', 'stdc++.6.0.9']
  s.frameworks = ['CoreMedia', 'AudioToolbox', 'MobileCoreServices', 'SystemConfiguration', 'OpenAL', 'GLKit', 'VideoToolbox']
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/T_EzvizOpenSDK/ThirdLib/EzvizOpenSDK/4.3.0/**"
  }

end
