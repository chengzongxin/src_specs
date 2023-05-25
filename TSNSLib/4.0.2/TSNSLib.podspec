Pod::Spec.new do |s|
  s.name             = "TSNSLib"
  s.version          = "4.0.2"
  s.summary          = "土巴兔社交库"
  s.description      = "修改THKAppleLoginRequest的请求参数"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => '859c775' }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'TSNSLib/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TSNSLib' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import "TSNSLib.h"'
  # s.public_header_files = 'TSNSLib/Pod/Classes/TSNSLib.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TencentOpenAPI-Mirror', '3.3.9' 
  s.dependency 'WechatOpenSDK', '1.8.5' 
  s.dependency 'Weibo_SDK', '3.3.0'
  #s.dependency 'TBasicLib', '0.8.67'
  #s.dependency 'THKBaseNetwork', '0.2.3'
  #s.dependency 'TBTCategory', '0.1.4'
  #s.dependency 'TBTCustomView', '0.2.3'
  #s.dependency 'TObject', '0.0.1'
  
end