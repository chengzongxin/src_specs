Pod::Spec.new do |s|
  s.name             = "TSNSLib"
  s.version          = "0.3.0"
  s.summary          = "土巴兔社交库"
  s.description      = "集成土巴兔和第三方登录、注册、第三方分享等"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.5.0" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TSNSLib/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TSNSLib' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import "TSNSLib.h"'
  # s.public_header_files = 'TSNSLib/Pod/Classes/TSNSLib.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TencentOpenAPIV2_3', '~> 2.3'
  s.dependency 'libWeChatSDK', '~> 1.6'
  s.dependency 'WeiboSDK', '~> 3.1.3'
  s.dependency 'OpenSSL', '~> 1.0.206'
  s.dependency 'TBasicLib'
end
