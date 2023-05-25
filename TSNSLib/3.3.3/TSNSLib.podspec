Pod::Spec.new do |s|
  s.name             = "TSNSLib"
  s.version          = "3.3.3"
  s.summary          = "土巴兔社交库"
  s.description      = "集成土巴兔和第三方登录、注册、第三方分享等"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "6a4d0d2" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'TSNSLib/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TSNSLib' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import "TSNSLib.h"'
  # s.public_header_files = 'TSNSLib/Pod/Classes/TSNSLib.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TencentOpenAPI-Mirror', '3.3.9' 
  s.dependency 'WechatOpenSDK', '~> 1.8.7' 
  s.dependency 'Weibo_SDK', '3.3.0'
  s.dependency 'OpenSSL', '~> 1.0.206'
  s.dependency 'TBasicLib', '~> 0.8.66'
  s.dependency 'THKBaseNetwork', '~> 0.2.3'
  s.dependency 'TBTCategory'
  s.dependency 'TBTCustomView'
  s.dependency 'TObject'
  
end
