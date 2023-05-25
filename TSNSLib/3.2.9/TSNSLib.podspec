Pod::Spec.new do |s|
  s.name             = "TSNSLib"
  s.version          = "3.2.9"
  s.summary          = "土巴兔社交库"
  s.description      = "集成土巴兔和第三方登录、注册、第三方分享等"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "10e3bfc" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TSNSLib/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TSNSLib' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import "TSNSLib.h"'
  # s.public_header_files = 'TSNSLib/Pod/Classes/TSNSLib.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TencentOpenAPIV2_3'
  #s.dependency 'libWeChatSDK', '~> 1.6' // 出于调起小程序的需要，3.0.0起 libWeChatSDK 库需要手动接入
  s.dependency 'WeiboSDK', '~> 3.1.3'
  s.dependency 'OpenSSL', '~> 1.0.206'
  s.dependency 'TBasicLib'
  s.dependency 'THKBaseNetwork'
  s.dependency 'THKCommonRequestExtensionKit'
  s.dependency 'TBTCategory'
  s.dependency 'TBTOldNetwork'
  s.dependency 'TBTCustomView'
  s.dependency 'TBTLog'
  s.dependency 'TMUIKit/TMUIComponents/TMToast'
  
end
