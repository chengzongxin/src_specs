Pod::Spec.new do |s|
  s.name             = "TPay"
  s.version          = "3.0.6"
  s.summary          = "土巴兔支付组件"
  s.description      = "集成微信支付、支付宝支付"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.9.85" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TPay/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TPay' => ['TPay/Pod/Assets/*.png']
  }

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  #s.dependency 'libWeChatSDK', '~> 1.6' // 出于调起小程序的需要，3.0.0起 libWeChatSDK 库需要手动接入
  s.dependency 'AlipaySDK', '~> 2.0.0-bc'
  s.dependency 'TBTLog'
  s.frameworks = ['CoreMotion']

end
