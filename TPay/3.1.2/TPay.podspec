Pod::Spec.new do |s|
  s.name             = "TPay"
  s.version          = "3.1.2"
  s.summary          = "土巴兔支付组件"
  s.description      = "集成微信支付、支付宝支付"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "4301fee3" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'TPay/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TPay' => ['TPay/Pod/Assets/*.png']
  }

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'TBasicLib', '0.8.67'
  s.dependency 'WechatOpenSDK', '1.8.5'
  s.dependency 'PingppAlipaySDKNoUTDID', '15.7.9'
  s.dependency 'TBTCategory', '0.1.4'
  s.frameworks = ['CoreMotion']

end
