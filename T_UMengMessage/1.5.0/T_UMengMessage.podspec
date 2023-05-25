Pod::Spec.new do |s|
  s.name             = "T_UMengMessage"
  s.version          = "1.5.0"
  s.summary          = "友盟推送sdk"
  s.description      = "友盟推送最近版本都没有更新到cocoapod，只能自己造一个"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.80" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'ThirdLib/UMengMessage/UMessage_Sdk_All_1.5.0a/UMessage_Sdk_1.5.0a/*.h'
  s.preserve_paths = 'ThirdLib/UMengMessage/UMessage_Sdk_All_1.5.0a/UMessage_Sdk_1.5.0a/libUMessage_Sdk_1.5.0a.a'
  s.vendored_libraries = 'ThirdLib/UMengMessage/UMessage_Sdk_All_1.5.0a/UMessage_Sdk_1.5.0a/libUMessage_Sdk_1.5.0a.a'
  s.libraries = 'UMessage_Sdk_1.5.0a'
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/T_UMengMessage/ThirdLib/UMengMessage/UMessage_Sdk_All_1.5.0a/UMessage_Sdk_1.5.0a/**"
  }

end
